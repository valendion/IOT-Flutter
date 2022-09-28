part of 'loading_bloc.dart';

@immutable
abstract class LoadingState {
  bool loading;
  LoadingState(this.loading);
}

class LoadingInitial extends LoadingState {
  LoadingInitial() : super(true);
}

class LoadingLoaded extends LoadingState {
  LoadingLoaded(bool loading) : super(loading);
}
