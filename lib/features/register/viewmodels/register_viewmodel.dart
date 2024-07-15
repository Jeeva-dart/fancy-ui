import 'package:fancy_ui/features/register/models/register_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realm/realm.dart';

class RegisterViewmodel extends AutoDisposeNotifier<RealmResults<RegisterDataModel>> {
  final TextEditingController username = TextEditingController(text: "Jeeva");
  final TextEditingController email = TextEditingController(text: "jeeva@flutter.com");
  final TextEditingController password = TextEditingController(text: "Flutter@123#");
  @override
  build() {
    var config = Configuration.local([RegisterDataModel.schema]);
    var realm = Realm(config);
    var items = realm.all<RegisterDataModel>();
    return items;
  }

  void storeUser() {
    var config = Configuration.local([RegisterDataModel.schema]);
    var realm = Realm(config);
    realm.write(() => 
      realm.add(RegisterDataModel(username.text, email.text, password.text)));
  }
}

class Logger extends ProviderObserver {
   @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    print('''
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "newValue": "$newValue"
}''');
  }
}