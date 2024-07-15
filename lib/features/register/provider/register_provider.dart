import 'package:fancy_ui/features/register/models/register_model.dart';
import 'package:fancy_ui/features/register/viewmodels/register_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realm/realm.dart';

final registerProvider = NotifierProvider.autoDispose<RegisterViewmodel, RealmResults<RegisterDataModel>>(() => RegisterViewmodel());