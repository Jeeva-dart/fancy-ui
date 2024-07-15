import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider = NotifierProvider<ThemeProvider, ThemeMode>(() => ThemeProvider(),);

final class ThemeProvider extends Notifier<ThemeMode> {
  @override
  build() {
    return ThemeMode.dark;
  }

  void toggle() {
    state = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  }
  
}