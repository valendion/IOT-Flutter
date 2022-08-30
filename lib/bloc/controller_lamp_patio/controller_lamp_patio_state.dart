part of 'controller_lamp_patio_bloc.dart';

@immutable
abstract class ControllerLampPatioState {
  bool statusLampPatio;
  ControllerLampPatioState(this.statusLampPatio);
}

class ControllerLampPatioInitial extends ControllerLampPatioState {
  ControllerLampPatioInitial() : super(false);
}

class ControllerLoadedLampPatio extends ControllerLampPatioState {
  ControllerLoadedLampPatio(bool status) : super(status);
}
