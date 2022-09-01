// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monitoring_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Monitoring _$MonitoringFromJson(Map<String, dynamic> json) => Monitoring(
      deteksiApi: json['deteksi_api'] as int,
      kadarGas: json['kadar_gas'] as int,
      kelembaban: json['kelembaban'] as int,
      suhu: json['suhu'] as int,
    );

Map<String, dynamic> _$MonitoringToJson(Monitoring instance) =>
    <String, dynamic>{
      'deteksi_api': instance.deteksiApi,
      'kadar_gas': instance.kadarGas,
      'kelembaban': instance.kelembaban,
      'suhu': instance.suhu,
    };
