import 'package:fancy_ui/features/login/viewmodels/login_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final signInViewModelProvider = AsyncNotifierProvider<SignInViewModel, void>(SignInViewModel.new);