import 'dart:async';

import 'package:botanique/models/events/client_events.dart';
import 'package:botanique/repositories/storage_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../models/enums/app_enums.dart';
import '../models/events/server_events.dart';

class WebSocketBloc extends Bloc<BaseEvent, ServerEvent> {
  final WebSocketChannel channel;
  late StreamSubscription _channelSubscription;
  String? jwt;

  WebSocketBloc({required this.channel})
      : super(ServerRespondsNotAuthenticated()) {
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
        final storageRepository = StorageRepository.storageRepository;
        storageRepository.saveData(LocalStorageKeys.jwt, event.jwt);
        jwt = event.jwt;
        emit(event);
      },
    );

    on<ServerRespondsNotAuthenticated>(
      (event, emit) {
        final storageRepository = StorageRepository.storageRepository;
        storageRepository.deleteData(LocalStorageKeys.jwt);
        jwt = null;
        emit(event);
      },
    );

    on<ServerLogsOutUser>(
      (event, emit) {
        final storageRepository = StorageRepository.storageRepository;
        storageRepository.deleteData(LocalStorageKeys.jwt);
        jwt = null;
        emit(event);
      },
    );

    // Feed deserialized events from server into this bloc
    _channelSubscription = channel.stream
        .map((event) => ServerEventMapper.fromJson(event))
        .listen(add, onError: addError);

    // Verify token on startup
    StorageRepository.storageRepository
        .getData(LocalStorageKeys.jwt)
        .then((jwt) {
      if (jwt != null) {
        add(
          ClientWantsToCheckJwtValidity(jwt: jwt),
        );
      }
    });
  }

  FutureOr<void> _onClientEvent(ClientEvent event, Emitter<ServerEvent> emit) {
    if (jwt != null && event is ClientEventWithJwt) {
      event = event.copyWith(jwt: jwt!);
    }

    channel.sink.add(event.toJson());
  }

  @override
  Future<void> close() async {
    _channelSubscription.cancel();
    channel.sink.close();
    super.close();
  }
}
