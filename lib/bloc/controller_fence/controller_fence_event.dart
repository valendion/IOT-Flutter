part of 'controller_fence_bloc.dart';

@immutable
abstract class ControllerFenceEvent {}

class StatusOnFence extends ControllerFenceEvent {
  bool status;

  StatusOnFence({this.status = true});
}

class StatusOffFence extends ControllerFenceEvent {
  bool status;

  StatusOffFence({this.status = false});
}
