import 'package:fancy_ui/common/viewmodels/notification_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final snackBarProvider = StateNotifierProvider((ref) => SnackBarViewmodel(null),);