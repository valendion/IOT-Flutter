part of 'controller_door_bloc.dart';

@immutable
abstract class ControllerEvent {}

class StatusOnDoor extends ControllerEvent {
  bool status;

  StatusOnDoor({this.status = true});
}

class StatusOffDoor extends ControllerEvent {
  bool status;

  StatusOffDoor({this.status = false});
}
