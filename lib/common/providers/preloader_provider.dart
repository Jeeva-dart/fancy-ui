import 'package:flutter_riverpod/flutter_riverpod.dart';

final preloaderProvider = StateNotifierProvider<PreloaderProvider, bool>((ref) => PreloaderProvider(false),);

final class PreloaderProvider extends StateNotifier<bool> {
  PreloaderProvider(super.state);

  void toggle() {
    state = !state;
  }

  void show() {
    state = true;
  }

  void hide() {
    state = false;
  }

}