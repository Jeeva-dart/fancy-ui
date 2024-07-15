import 'package:fancy_ui/common/providers/preloader_provider.dart';
import 'package:fancy_ui/common/providers/theme_provider.dart';
import 'package:fancy_ui/common/utils/validators.dart';
import 'package:fancy_ui/common/widgets/widgets.dart';
import 'package:fancy_ui/features/login/provider/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginView extends ConsumerWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              UITextFormField(
                decoration: const InputDecoration(labelText: "Email"), 
                validator: (input) => 
                  FormValidator.validator(
                    input: input, 
                    label: "email", 
                    type: ValidatorEmail(), 
                    minLength: 0)),
              const Gap.medium(),
              UITextFormField(
                decoration: const InputDecoration(labelText: "Password"), 
                validator: (input) => 
                  FormValidator.validator(
                    input: input, 
                    label: "password", 
                    type: ValidatorPassword(),
                    minLength: 0,
                    errMsg: "Weak password"),),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  UIButton(
                    preloader: ref.watch(preloaderProvider),
                    onPressed: () {
                        ref.read(signInViewModelProvider.notifier).signIn("user", "name");
                      // if(formKey.currentState != null && formKey.currentState!.validate()) {
                      // }
                    },
                    child: const Text("Sign in"),
                  ),
                  UIconButton(onPressed: () {
                    ref.read(themeProvider.notifier).toggle();
                  }, icon: ref.watch(themeProvider) == ThemeMode.dark ? Icons.light_mode : Icons.dark_mode),
                  UIButton(
                    onPressed: !ref.watch(preloaderProvider) ? () {
                      context.goNamed("register");
                    } : null,
                    child: const Text("Register"),
                  )
                ],
              ),              
          ],),
        ),
      )

      );
  }
}