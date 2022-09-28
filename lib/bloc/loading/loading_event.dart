part of 'loading_bloc.dart';

@immutable
abstract class LoadingEvent {}

class LoadingOn extends LoadingEvent {
  bool loading;
  LoadingOn({this.loading = true});
}

class LoadingOff extends LoadingEvent {
  bool loading;
  LoadingOff({this.loading = false});
}
