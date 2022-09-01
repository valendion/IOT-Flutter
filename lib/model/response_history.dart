import 'package:iot_smart_home/model/history_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'response_history.g.dart';

@JsonSerializable()
class ResponseHistory {
  late List<HistoryModel> history;

  ResponseHistory({required this.history});

  factory ResponseHistory.fromJson(Map<String, dynamic> json) {
    return _$ResponseHistoryFromJson(json);
  }
}
