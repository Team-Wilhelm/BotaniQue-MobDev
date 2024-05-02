import 'dart:async';
import 'dart:convert';

import 'package:botanique/models/events/client_events.dart';
import 'package:botanique/util/xfile_converter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../models/events/server_events.dart';
import '../models/models/plant.dart';

class ResetState extends BaseEvent {}

class WebSocketBloc extends Bloc<BaseEvent, AppState> {
  final WebSocketChannel channel;
  late StreamSubscription _channelSubscription;

  WebSocketBloc({required this.channel}) : super(AppState.empty()) {
    // Client events
    on<ClientEvent>(_onClientEvent);

    // Server events
    on<ServerSendsImageWithoutBackground>(
      (event, emit) {
        final XFile image = XFileConverter.fromBase64(event.base64Image);
        final newState = state.copyWith(addPlantImage: image);
        emit(newState);
      },
    );

    on<ServerCreatesNewPlant>((event, emit) {
      print("New plant created: ${event.plant}");
      final newState = state.copyWith(newlyAddedPlant: event.plant);
      emit(newState);
    });

    on<ResetState>((event, emit) {
      emit(state.reset());
    });

    // Feed deserialized events from server into this bloc
    _channelSubscription = channel.stream
        .map((event) => jsonDecode(event))
        .map((event) => ServerEvent.fromJson(event))
        .listen(add, onError: addError);
  }

  FutureOr<void> _onClientEvent(ClientEvent event, Emitter<AppState> emit) {
    if (event is ClientWantsToCreatePlant) {
      event = event.copyWith(jwt: state.jwt!);
    } else if (event is ClientWantsToRemoveBackgroundFromImage) {
      event = event.copyWith(jwt: state.jwt!);
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

class AppState {
  final String? jwt;
  final XFile? addPlantImage;
  final Plant? newlyAddedPlant;
  final String? error;
  get isAuthenticated => jwt != null; 

  AppState({
    required this.addPlantImage,
    this.newlyAddedPlant,
    this.error,
    this.jwt,
  });

  static AppState empty() {
    return AppState(addPlantImage: null);
  }

  AppState copyWith({
    XFile? addPlantImage,
    Plant? newlyAddedPlant,
    String? error,
    String? jwt,
  }) {
    return AppState(
      addPlantImage: addPlantImage ?? this.addPlantImage,
      newlyAddedPlant: newlyAddedPlant ?? this.newlyAddedPlant,
      error: error ?? this.error,
      jwt: jwt ?? this.jwt,
    );
  }

  AppState reset() {
    return AppState(
      addPlantImage: null,
      newlyAddedPlant: null,
      error: null,
      jwt: jwt,
    );
  }
}