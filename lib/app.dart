import 'package:fancy_ui/common/providers/theme_provider.dart';
import 'package:fancy_ui/common/styles/app_theme.dart';
import 'package:fancy_ui/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'common/providers/notification_provider.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    final snackbarNotifier = ref.read(snackBarProvider.notifier);
    return MaterialApp.router(
      scaffoldMessengerKey: snackbarNotifier.scaffoldMessengerKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: MaterialTheme.lightScheme(),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(colorScheme: MaterialTheme.darkScheme(), useMaterial3: true),
      themeMode: themeMode,
      routerConfig: router,
    );
  }
}