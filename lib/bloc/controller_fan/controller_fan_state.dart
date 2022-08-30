part of 'controller_fan_bloc.dart';

@immutable
abstract class ControllerFanState {
  bool statusFan;
  ControllerFanState(this.statusFan);
}

class ControllerFanInitial extends ControllerFanState {
  ControllerFanInitial() : super(false);
}

class ControllerLoadedFan extends ControllerFanState {
  ControllerLoadedFan(bool statusFan) : super(statusFan);
}
