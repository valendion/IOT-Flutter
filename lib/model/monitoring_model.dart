import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'monitoring_model.g.dart';

@JsonSerializable()
class Monitoring {
  @JsonKey(name: 'deteksi_api')
  int deteksiApi;
  @JsonKey(name: 'kadar_gas')
  int kadarGas;
  int kelembaban;
  int suhu;

  Monitoring(
      {this.deteksiApi = 0,
      this.kadarGas = 0,
      this.kelembaban = 0,
      this.suhu = 0});

  factory Monitoring.fromJson(Map<String, dynamic> json) {
    return _$MonitoringFromJson(json);
  }

  // factory Monitoring.fromSnapshot(DataSnapshot snapshot) {
  //   return Monitoring(
  //       deteksiApi: snapshot.value['deteksi_api'],
  //       kadarGas: snapshot.value['kadar_gas'],
  //       kelembaban: snapshot.value['kelembaban'],
  //       suhu: snapshot.value['suhu']);
  // }
}

// Monitoring parseMonitoring(String? json) {
//   if (json == null) {
//     return Monitoring(deteksiApi: 0, kadarGas: 0, kelembaban: 0, suhu: 0);
//   }
//   var parsed = jsonDecode(json);
//   return parsed;
// }

Monitoring parseMonitoring(String? json) {
  if (json == null) {
    return Monitoring(deteksiApi: 0, kadarGas: 0, kelembaban: 0, suhu: 0);
  }
  var parsed = jsonDecode(json);
  return parsed;
}
