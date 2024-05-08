import 'dart:async';
import 'dart:convert';

import 'package:botanique/models/events/client_events.dart';
import 'package:botanique/models/events/server_events.dart';
import 'package:botanique/state/broadcast_ws_channel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AllPlantsBloc extends Bloc<BaseEvent, ServerEvent> {
  final BroadcastWsChannel channel;
  late StreamSubscription _channelSubscription;
  String? jwt;

  AllPlantsBloc({required this.channel}) : super(InitialServerEvent()) {
    // jwt = LocalStorageRepository().getData(LocalStorageKeys.jwt);

    // Client events
    on<ClientEvent>(_onClientEvent);

    // Server events, by defualt, the event is just emitted, but if a different handler is registered, it will be executed instead
    on<ServerEvent>(
      (event, emit) {
        print("AllPlantsBloc: ServerEvent: $event");
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
    if (event is ClientWantsAllPlants) {
      event = event.copyWith(jwt: jwt!);
    } else if (event is ClientWantsToRemoveBackgroundFromImage) {
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
