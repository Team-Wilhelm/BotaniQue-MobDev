import 'dart:async';

import 'package:botanique/models/events/client_events.dart';
import 'package:botanique/repositories/secure_storage_repository.dart';
import 'package:botanique/state/broadcast_ws_channel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/events/server_events.dart';

class WebSocketBloc extends Bloc<BaseEvent, ServerEvent> {
  final BroadcastWsChannel channel;
  late StreamSubscription _channelSubscription;
  String? jwt;

  WebSocketBloc({required this.channel}) : super(ServerRespondsNotAuthenticated()) {
    // Client events
    on<ClientEvent>(_onClientEvent);

    // Server events, by defualt, the event is just emitted, but if a different handler is registered, it will be executed instead
    on<ServerEvent>(
      (event, emit) {
        print("Received event: ${event.toJson()}");
        emit(event);
      },
    );

    on<ServerAuthenticatesUser>(
      (event, emit) {
        final secureStorageRepository = SecureStorageRepository();
        secureStorageRepository.saveData(LocalStorageKeys.jwt, event.jwt);
        jwt = event.jwt;
        emit(event);
      },
    );

    on<ServerRespondsNotAuthenticated>(
      (event, emit) {
        final secureStorageRepository = SecureStorageRepository();
        secureStorageRepository.deleteData(LocalStorageKeys.jwt);
        jwt = null;
        emit(event);
      },
    );

    // Feed deserialized events from server into this bloc
    _channelSubscription = channel.stream
        .map((event) => ServerEventMapper.fromJson(event))
        .listen(add, onError: addError);
  }

  FutureOr<void> _onClientEvent(ClientEvent event, Emitter<ServerEvent> emit) {
    if (jwt != null && event is ClientEventWithJwt) {
      event = event.copyWith(jwt: jwt!);
    }

    print("Sending event: ${event.toJson()}");
    channel.sink.add(event.toJson());
  }

  @override
  Future<void> close() async {
    _channelSubscription.cancel();
    channel.sink.close();
    super.close();
  }
}
