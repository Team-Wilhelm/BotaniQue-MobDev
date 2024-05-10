import 'dart:async';
import 'dart:convert';

import 'package:botanique/models/events/client_events.dart';
import 'package:botanique/repositories/local_storage_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../models/events/server_events.dart';

class WebSocketBloc extends Bloc<BaseEvent, ServerEvent> {
  final WebSocketChannel channel;
  late StreamSubscription _channelSubscription;
  String? jwt;

  WebSocketBloc({required this.channel}) : super(ServerEvent()) {
    jwt = LocalStorageRepository().getData(LocalStorageKeys.jwt);

    // Client events
    on<ClientEvent>(_onClientEvent);

    // Server events, by defualt, the event is just emitted, but if a different handler is registered, it will be executed instead
    on<ServerEvent>(
      (event, emit) {
        emit(event);
      },
    );

    on<ServerAuthenticatesUser>(
      (event, emit) {
        final LocalStorageRepository localStorageRepository =
            LocalStorageRepository();
        localStorageRepository.saveData(LocalStorageKeys.jwt, event.jwt);
        jwt = event.jwt;
        emit(event);
      },
    );

    // Feed deserialized events from server into this bloc
    _channelSubscription = channel.stream
        .map((event) => jsonDecode(event))
        .map((event) => ServerEvent.fromJson(event))
        .listen(add, onError: addError);
  }

  FutureOr<void> _onClientEvent(ClientEvent event, Emitter<ServerEvent> emit) {
    if (event is ClientWantsToCreatePlant) {
      event = event.copyWith(jwt: jwt!);
    } else if (event is ClientWantsToRemoveBackgroundFromImage) {
      event = event.copyWith(jwt: jwt!);
    } else if (event is ClientWantsToUpdateProfile) {
      event = event.copyWith(jwt: jwt!);
    }

    print("Sending event: ${event.toJson()}");
    channel.sink.add(jsonEncode(event.toJson()));
  }

  @override
  Future<void> close() async {
    _channelSubscription.cancel();
    channel.sink.close();
    super.close();
  }
}
