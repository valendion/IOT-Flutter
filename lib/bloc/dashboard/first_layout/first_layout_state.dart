part of 'first_layout_bloc.dart';

@immutable
abstract class FirstLayoutState {
  Monitoring monitoring;
  FirstLayoutState(this.monitoring);
}

class FirstLayoutInitial extends FirstLayoutState {
  FirstLayoutInitial() : super(Monitoring());
}

class FirstLayoutLoaded extends FirstLayoutState {
  FirstLayoutLoaded(Monitoring monitoring) : super(monitoring);
}
