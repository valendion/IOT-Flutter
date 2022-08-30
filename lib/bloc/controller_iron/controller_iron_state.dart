part of 'controller_iron_bloc.dart';

@immutable
abstract class ControllerIronState {
  bool statusIron;
  ControllerIronState(this.statusIron);
}

class ControllerIronInitial extends ControllerIronState {
  ControllerIronInitial() : super(false);
}

class ControllerLoadedIron extends ControllerIronState {
  ControllerLoadedIron(bool status) : super(status);
}
