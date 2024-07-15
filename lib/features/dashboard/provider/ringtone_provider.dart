import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final ringtoneProvider = AsyncNotifierProvider<RingtoneProvider, List<String>>(RingtoneProvider.new);

class RingtoneProvider extends AsyncNotifier<List<String>> {
  @override
  build() {
    return getRingtone();
  }

  Future<List<String>> getRingtone() async {
    const channel = MethodChannel("flutter_channel");
    List<Object?> ringtones = await channel.invokeMethod("getRingtone", ["hiell", "there", [1, 2, 3], {"key": "value"}]);
    return ringtones.map((e) => e as String).toList();
  }

}