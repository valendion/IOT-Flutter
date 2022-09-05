part of 'history_action_bloc.dart';

@immutable
abstract class HistoryActionState {
  List<HistoryModel> historis;
  HistoryActionState(this.historis);
}

class HistoryActionInitial extends HistoryActionState {
  HistoryActionInitial() : super([]);
}

class HistoryActionLoaded extends HistoryActionState {
  HistoryActionLoaded(List<HistoryModel> historis) : super(historis);
}
