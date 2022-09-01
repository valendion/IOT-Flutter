import 'package:json_annotation/json_annotation.dart';
part 'history_model.g.dart';

@JsonSerializable()
class HistoryModel {
  @JsonKey(name: 'nama_komponen')
  late String namaKomponen;

  late String waktu;
  late String aksi;

  HistoryModel({
    required this.namaKomponen,
    required this.waktu,
    required this.aksi,
  });

  factory HistoryModel.fromJson(Map<String, dynamic> json) {
    return _$HistoryModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HistoryModelToJson(this);
}
