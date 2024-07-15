import 'package:dio/dio.dart';
import 'package:fancy_ui/common/services/network_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio();
  return dio;
});

final networkServiceProvider = Provider<NetworkService>((ref) {
  final dio = ref.watch(dioProvider);
  return NetworkService(dio);
});