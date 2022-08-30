import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'controller_lamp_living_room_event.dart';
part 'controller_lamp_living_room_state.dart';

class ControllerLampLivingRoomBloc
    extends Bloc<ControllerLampLivingRoomEvent, ControllerLampLivingRoomState> {
  ControllerLampLivingRoomBloc() : super(ControllerLampLivingRoomInitial()) {
    on<StatusOnLampLivingRoom>((event, emit) {
      emit(ControllerLoadedLampLivingRoom(
          state.statusLampLivingRoom = event.status));
    });

    on<StatusOffLampLivingRoom>((event, emit) {
      emit(ControllerLoadedLampLivingRoom(
          state.statusLampLivingRoom = event.status));
    });
  }
}
