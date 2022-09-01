part of 'monitor_kelembaban_bloc.dart';

@immutable
abstract class MonitorKelembabanState {
  int kelembaban;
  MonitorKelembabanState(this.kelembaban);
}

class MonitorKelembabanInitial extends MonitorKelembabanState {
  static int initialValue = 0;
  MonitorKelembabanInitial() : super(initialValue);
}

class MonitorKelembabanLoaded extends MonitorKelembabanState {
  MonitorKelembabanLoaded(int value) : super(value);
}
