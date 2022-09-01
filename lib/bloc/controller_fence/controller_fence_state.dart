part of 'controller_fence_bloc.dart';

@immutable
abstract class ControllerStateFence {
  bool statusFence;
  ControllerStateFence(this.statusFence);
}

class ControllerInitialFence extends ControllerStateFence {
  bool initialData;
  ControllerInitialFence({this.initialData = false}) : super(initialData);
}

class ControllerLoadedFence extends ControllerStateFence {
  ControllerLoadedFence(bool status) : super(status);
}
