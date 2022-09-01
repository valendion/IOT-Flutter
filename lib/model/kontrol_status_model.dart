import 'package:json_annotation/json_annotation.dart';
part 'kontrol_status_model.g.dart';

@JsonSerializable()
class KontrolStatusModel {
  @JsonKey(name: 'lampu_teras')
  bool lampuTeras;
  @JsonKey(name: 'lampu_tamu')
  bool lampuTamu;

  bool setrika;
  bool kipas;
  bool pagar;
  bool pintu;

  KontrolStatusModel(
      {required this.lampuTeras,
      required this.kipas,
      required this.lampuTamu,
      required this.pagar,
      required this.pintu,
      required this.setrika});

  factory KontrolStatusModel.fromJson(Map<String, dynamic> json) {
    return _$KontrolStatusModelFromJson(json);
  }
}
