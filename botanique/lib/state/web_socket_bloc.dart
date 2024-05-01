import 'dart:async';
import 'dart:convert';

import 'package:botanique/models/events/client_events.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../models/events/server_events.dart';

class WebSocketBloc extends Bloc<BaseEvent, AppState> {
  final WebSocketChannel channel;

  WebSocketBloc({required this.channel}) : super(AppState().empty()) {
    // Client events
    on<ClientEvent>(_onClientEvent);

    // Server events
    on<ServerSendsImageWithoutBackground>(
      (event, emit) {
        emit(state);
      },
    );
  }

    FutureOr<void> _onClientEvent(ClientEvent event, Emitter<AppState> emit) {
    channel.sink.add(jsonEncode(event.toJson()));
  }
}

class AppState {
  AppState empty() {
    return AppState();
  }
}
