part of 'controller_lamp_living_room_bloc.dart';

@immutable
abstract class ControllerLampLivingRoomState {
  bool statusLampLivingRoom;
  ControllerLampLivingRoomState(this.statusLampLivingRoom);
}

class ControllerLampLivingRoomInitial extends ControllerLampLivingRoomState {
  bool initialData;
  ControllerLampLivingRoomInitial({this.initialData = false})
      : super(initialData);
}

class ControllerLoadedLampLivingRoom extends ControllerLampLivingRoomState {
  ControllerLoadedLampLivingRoom(bool status) : super(status);
}
