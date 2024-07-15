import 'package:fancy_ui/common/utils/validators.dart';
import 'package:fancy_ui/common/widgets/widgets.dart';
import 'package:fancy_ui/features/register/provider/register_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class RegisterView extends ConsumerWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final register = ref.read(registerProvider.notifier);
    return Scaffold(
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              UITextFormField(
                controller: register.username,
                decoration: const InputDecoration(labelText: "Username"), 
                validator:(input) => FormValidator.validator(input: input, label: "username", type: ValidatorText()),),
              const Gap.medium(),
              UITextFormField(
                controller: register.email,
                decoration: const InputDecoration(labelText: "Email"), 
                validator: (input) => FormValidator.validator(input: input, label: "email", type: ValidatorEmail()),),
              const Gap.medium(),
              UITextFormField(
                controller: register.password,
                decoration: const InputDecoration(labelText: "Password"), 
                validator: (input) => FormValidator.validator(input: input, label: "password", type: ValidatorPassword(), errMsg: "Weak password"),),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  UIButton(
                    onPressed: () {
                      if(formKey.currentState != null && formKey.currentState!.validate()) {
                        ref.read(registerProvider.notifier).storeUser();
                      }
                    },
                    child: const Text("Register"),),
                  UIconButton(
                    icon: Icons.arrow_back_ios_new,
                    onPressed: () {
                      context.goNamed("login");
                  }),
                ],
              ),
          ],),
        ),
      ),
    );
  }
}