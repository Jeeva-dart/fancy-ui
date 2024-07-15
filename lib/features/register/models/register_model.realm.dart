// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class RegisterDataModel extends _RegisterDataModel
    with RealmEntity, RealmObjectBase, RealmObject {
  RegisterDataModel(
    String username,
    String email,
    String password,
  ) {
    RealmObjectBase.set(this, 'username', username);
    RealmObjectBase.set(this, 'email', email);
    RealmObjectBase.set(this, 'password', password);
  }

  RegisterDataModel._();

  @override
  String get username =>
      RealmObjectBase.get<String>(this, 'username') as String;
  @override
  set username(String value) => RealmObjectBase.set(this, 'username', value);

  @override
  String get email => RealmObjectBase.get<String>(this, 'email') as String;
  @override
  set email(String value) => RealmObjectBase.set(this, 'email', value);

  @override
  String get password =>
      RealmObjectBase.get<String>(this, 'password') as String;
  @override
  set password(String value) => RealmObjectBase.set(this, 'password', value);

  @override
  Stream<RealmObjectChanges<RegisterDataModel>> get changes =>
      RealmObjectBase.getChanges<RegisterDataModel>(this);

  @override
  Stream<RealmObjectChanges<RegisterDataModel>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<RegisterDataModel>(this, keyPaths);

  @override
  RegisterDataModel freeze() =>
      RealmObjectBase.freezeObject<RegisterDataModel>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'username': username.toEJson(),
      'email': email.toEJson(),
      'password': password.toEJson(),
    };
  }

  static EJsonValue _toEJson(RegisterDataModel value) => value.toEJson();
  static RegisterDataModel _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'username': EJsonValue username,
        'email': EJsonValue email,
        'password': EJsonValue password,
      } =>
        RegisterDataModel(
          fromEJson(username),
          fromEJson(email),
          fromEJson(password),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(RegisterDataModel._);
    register(_toEJson, _fromEJson);
    return SchemaObject(
        ObjectType.realmObject, RegisterDataModel, 'RegisterDataModel', [
      SchemaProperty('username', RealmPropertyType.string),
      SchemaProperty('email', RealmPropertyType.string),
      SchemaProperty('password', RealmPropertyType.string),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
