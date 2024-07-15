import 'dart:async';
import 'package:dio/dio.dart';
import 'package:fancy_ui/common/providers/network_provider.dart';
import 'package:fancy_ui/common/providers/preloader_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final class SignInViewModel extends AsyncNotifier<void> {
  @override
  FutureOr<void> build() {
    
  }

   Future<void> signIn(String email, String password) async {
    ref.read(preloaderProvider.notifier).show();
    try {
      await Future.delayed(const Duration(seconds: 3));
      var result = await ref.watch(networkServiceProvider).post("https://dummyjson.com/test");
      print(result);
      // Handle successful sign-in response
      // For example, save user data, navigate to the home screen, etc.
      state = const AsyncData(null);
      ref.read(preloaderProvider.notifier).hide();
    } on DioException catch (e, st) {
      state = AsyncError(e.response?.data['message'] ?? 'An error occurred', st);
    }
  }
  
}