part of 'controller_door_bloc.dart';

@immutable
abstract class ControllerStateDoor {
  bool statusDoor;
  // bool statusFence;
  ControllerStateDoor(this.statusDoor);
}

class ControllerInitialDoor extends ControllerStateDoor {
  ControllerInitialDoor() : super(false);
}

class ControllerLoadedDoor extends ControllerStateDoor {
  ControllerLoadedDoor(bool statusDoor) : super(statusDoor);
}
