part of 'controller_lamp_patio_bloc.dart';

@immutable
abstract class ControllerLampPatioState {
  bool statusLampPatio;
  ControllerLampPatioState(this.statusLampPatio);
}

class ControllerLampPatioInitial extends ControllerLampPatioState {
  bool initialData;
  ControllerLampPatioInitial({this.initialData = false}) : super(initialData);
}

class ControllerLoadedLampPatio extends ControllerLampPatioState {
  ControllerLoadedLampPatio(bool status) : super(status);
}
