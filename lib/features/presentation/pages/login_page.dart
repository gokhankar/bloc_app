import 'package:bloc_app/core/theme/app_palette.dart';
import 'package:bloc_app/features/presentation/pages/signup_page.dart';
import 'package:bloc_app/features/presentation/widgets/auth_gradient_button.dart';
import 'package:bloc_app/features/presentation/widgets/auth_input.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => const SignUpPage());
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final eMailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    eMailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    formKey.currentState?.validate();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Form(
              key: formKey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Login",
                      style: TextStyle(
                          color: AppPalette.whiteColor,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    AuthInput(
                      hinText: "Email",
                      controller: eMailController,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AuthInput(
                      hinText: "Password",
                      isObscureText: true,
                      controller: passwordController,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const AuthGradientButton(title: "Login"),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, LoginPage.route());
                      },
                      child: RichText(
                        text: TextSpan(
                            text: "Don't have an account? ",
                            style: null != Theme.of(context).textTheme
                                ? Theme.of(context).textTheme.titleMedium
                                : TextStyle(color: AppPalette.gradient2),
                            children: [
                              TextSpan(
                                text: "Sign Up.",
                                style: null != Theme.of(context).textTheme
                                    ? Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(color: AppPalette.gradient2)
                                    : TextStyle(color: AppPalette.gradient2),
                              )
                            ]),
                      ),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
