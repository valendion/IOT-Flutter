part of 'controller_iron_bloc.dart';

@immutable
abstract class ControllerIronState {
  bool statusIron;
  ControllerIronState(this.statusIron);
}

class ControllerIronInitial extends ControllerIronState {
  bool initialData;
  ControllerIronInitial({this.initialData = false}) : super(initialData);
}

class ControllerLoadedIron extends ControllerIronState {
  ControllerLoadedIron(bool status) : super(status);
}
