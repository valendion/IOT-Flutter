import 'package:dio/dio.dart';
import 'package:iot_smart_home/model/monitoring_model.dart';
import 'package:iot_smart_home/utils/constans.dart';
import 'package:iot_smart_home/utils/interseptor.dart';

class NetworkClient {
  final Dio _dio = Dio(
      BaseOptions(baseUrl: baseUrl, connectTimeout: 5000, receiveTimeout: 3000))
    ..interceptors.add(Logging());

  Future<Monitoring?> getMonitoring() async {
    Monitoring? monitoring;

    Response monitoringData = await _dio.get(baseUrl);
    print('Monitoring Info: ${monitoringData.data}');
    monitoring = Monitoring.fromJson(monitoringData.data);

    return monitoring;
  }
}
