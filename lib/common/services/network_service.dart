import 'package:dio/dio.dart';

class NetworkService {
  final Dio _dio;

  NetworkService(this._dio);

  Future<Response> post(String path, {Map<String, dynamic>? data}) async {
    return _dio.post(path, data: data);
  }

  // Add other methods like get, put, delete if needed.
}
