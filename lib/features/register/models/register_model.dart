import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realm/realm.dart';

part 'register_model.freezed.dart';
part 'register_model.g.dart';
part 'register_model.realm.dart';

@freezed
class RegisterModel with _$RegisterModel {
  const factory RegisterModel({
    required String username,
    required String email,
    required String password
  }) = _RegisterModel;

  factory RegisterModel.fromJson(Map<String, String> json) => _$RegisterModelFromJson(json);
}

@RealmModel()
class _RegisterDataModel {
  late String username;
  late String email;
  late String password;
}