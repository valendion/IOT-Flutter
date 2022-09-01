// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseHistory _$ResponseHistoryFromJson(Map<String, dynamic> json) =>
    ResponseHistory(
      history: (json['history'] as List<dynamic>)
          .map((e) => HistoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponseHistoryToJson(ResponseHistory instance) =>
    <String, dynamic>{
      'history': instance.history,
    };
