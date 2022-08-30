part of 'controller_fan_bloc.dart';

@immutable
abstract class ControllerFanEvent {}

class StatusOnFan extends ControllerFanEvent {
  bool statusFan;

  StatusOnFan({this.statusFan = true});
}

class StatusOffFan extends ControllerFanEvent {
  bool statusFan;

  StatusOffFan({this.statusFan = false});
}
