import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final class SnackBarViewmodel extends StateNotifier {
  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  GlobalKey<ScaffoldMessengerState> get scaffoldMessengerKey => _scaffoldMessengerKey;

  SnackBarViewmodel(super.state);

  void showSnackbar(String message) {
    if (_scaffoldMessengerKey.currentState != null) {
      _scaffoldMessengerKey.currentState?.showSnackBar(
        SnackBar(content: Text(message)),
      );
    }
  }

  void showMaterialBanner(String message) {
      var res = _scaffoldMessengerKey.currentState?.showMaterialBanner(
        MaterialBanner(content: const Text("hi"), actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.dangerous))
        ], ));
      Future.delayed(const Duration(seconds: 5)).then((value) {
        res?.close();
      },);
  }

}