part of 'first_layout_bloc.dart';

@immutable
abstract class FirstLayoutEvent {}

class FirstLayoutAdd extends FirstLayoutEvent {
  Monitoring monitoring = Monitoring();

  set monitoringFirstLayout(Monitoring monitoring) {
    this.monitoring = monitoring;
  }
}
