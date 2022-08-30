part of 'controller_iron_bloc.dart';

@immutable
abstract class ControllerIronEvent {}

class StatusOnIron extends ControllerIronEvent {
  bool status;

  StatusOnIron({this.status = true});
}

class StatusOffIron extends ControllerIronEvent {
  bool status;

  StatusOffIron({this.status = false});
}
