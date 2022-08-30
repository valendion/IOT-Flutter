part of 'controller_lamp_living_room_bloc.dart';

@immutable
abstract class ControllerLampLivingRoomState {
  bool statusLampLivingRoom;
  ControllerLampLivingRoomState(this.statusLampLivingRoom);
}

class ControllerLampLivingRoomInitial extends ControllerLampLivingRoomState {
  ControllerLampLivingRoomInitial() : super(false);
}

class ControllerLoadedLampLivingRoom extends ControllerLampLivingRoomState {
  ControllerLoadedLampLivingRoom(bool status) : super(status);
}
