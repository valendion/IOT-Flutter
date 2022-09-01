part of 'controller_door_bloc.dart';

@immutable
abstract class ControllerStateDoor {
  bool statusDoor;
  ControllerStateDoor(this.statusDoor);
}

class ControllerInitialDoor extends ControllerStateDoor {
  bool initialData;

  ControllerInitialDoor({this.initialData = false}) : super(initialData);
}

class ControllerLoadedDoor extends ControllerStateDoor {
  ControllerLoadedDoor(bool statusDoor) : super(statusDoor);
}
