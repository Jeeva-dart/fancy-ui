import 'package:fancy_ui/features/dashboard/provider/ringtone_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardView extends ConsumerWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ringtones = ref.watch(ringtoneProvider);
    return Scaffold(
      body: Center(
        child: ringtones.when(
          data: (data) => DisplayRingtone(ringtone: data), 
          error: (error, stackTrace) => Text(error.toString()), 
          loading: () => const CircularProgressIndicator(color: Colors.white,)),
      )
    );
  }
}

class DisplayRingtone extends StatelessWidget {
  final List<String> ringtone;
  const DisplayRingtone({super.key, required this.ringtone});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ringtone.length,
      itemBuilder: (context, index) => Text(ringtone[index]),);
  }
}