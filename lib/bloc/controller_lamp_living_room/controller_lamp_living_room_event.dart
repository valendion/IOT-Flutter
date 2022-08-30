part of 'controller_lamp_living_room_bloc.dart';

@immutable
abstract class ControllerLampLivingRoomEvent {}

class StatusOnLampLivingRoom extends ControllerLampLivingRoomEvent {
  bool status;

  StatusOnLampLivingRoom({this.status = true});
}

class StatusOffLampLivingRoom extends ControllerLampLivingRoomEvent {
  bool status;

  StatusOffLampLivingRoom({this.status = false});
}
