part of 'history_action_bloc.dart';

@immutable
abstract class HistoryActionEvent {}

class HistoryActionAdd extends HistoryActionEvent {
  List<HistoryModel> historis = [];

  setHistoris(List<HistoryModel> historis) {
    this.historis = historis;
  }
}
