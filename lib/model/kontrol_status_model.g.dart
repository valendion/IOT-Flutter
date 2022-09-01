// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kontrol_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KontrolStatusModel _$KontrolStatusModelFromJson(Map<String, dynamic> json) =>
    KontrolStatusModel(
      lampuTeras: json['lampu_teras'] as bool,
      kipas: json['kipas'] as bool,
      lampuTamu: json['lampu_tamu'] as bool,
      pagar: json['pagar'] as bool,
      pintu: json['pintu'] as bool,
      setrika: json['setrika'] as bool,
    );

Map<String, dynamic> _$KontrolStatusModelToJson(KontrolStatusModel instance) =>
    <String, dynamic>{
      'lampu_teras': instance.lampuTeras,
      'lampu_tamu': instance.lampuTamu,
      'setrika': instance.setrika,
      'kipas': instance.kipas,
      'pagar': instance.pagar,
      'pintu': instance.pintu,
    };
