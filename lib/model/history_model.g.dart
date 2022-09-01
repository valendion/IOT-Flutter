// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HistoryModel _$HistoryModelFromJson(Map<String, dynamic> json) => HistoryModel(
      namaKomponen: json['nama_komponen'] as String,
      waktu: json['waktu'] as String,
      aksi: json['aksi'] as String,
    );

Map<String, dynamic> _$HistoryModelToJson(HistoryModel instance) =>
    <String, dynamic>{
      'nama_komponen': instance.namaKomponen,
      'waktu': instance.waktu,
      'aksi': instance.aksi,
    };
