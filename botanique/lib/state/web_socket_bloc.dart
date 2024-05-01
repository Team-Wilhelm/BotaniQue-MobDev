import 'dart:async';
import 'dart:convert';

import 'package:botanique/models/events/client_events.dart';
import 'package:botanique/state/xfile_converter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../models/events/server_events.dart';

class WebSocketBloc extends Bloc<BaseEvent, AppState> {
  final WebSocketChannel channel;
  late StreamSubscription _channelSubscription;

  WebSocketBloc({required this.channel}) : super(AppState.empty()) {
    // Client events
    on<ClientEvent>(_onClientEvent);

    // Server events
    on<ServerSendsImageWithoutBackground>(
      (event, emit) {
        print("image received");
        final XFile image = XFileConverter.fromBase64(event.base64Image);
        final newState = state.copyWith(addPlantImage: image);
        emit(newState);
      },
    );

    // Feed deserialized events from server into this bloc
    _channelSubscription = channel.stream
        .map((event) => jsonDecode(event))
        .map((event) => ServerEvent.fromJson(event))
        .listen(add, onError: addError);
  }

  FutureOr<void> _onClientEvent(ClientEvent event, Emitter<AppState> emit) {
    print("Sending event to server");
    channel.sink.add(jsonEncode(event.toJson()));
  }
}

class AppState {
  final XFile? addPlantImage;

  AppState({required this.addPlantImage});

  static AppState empty() {
    return AppState(addPlantImage: null);
  }

  AppState copyWith({
    XFile? addPlantImage,
  }) {
    return AppState(
      addPlantImage: addPlantImage ?? this.addPlantImage,
    );
  }
}
