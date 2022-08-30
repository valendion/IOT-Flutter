part of 'controller_lamp_patio_bloc.dart';

@immutable
abstract class ControllerLampPatioEvent {}

class StatusOnLampPatio extends ControllerLampPatioEvent {
  bool status;

  StatusOnLampPatio({this.status = true});
}

class StatusOffLampPatio extends ControllerLampPatioEvent {
  bool status;

  StatusOffLampPatio({this.status = false});
}
