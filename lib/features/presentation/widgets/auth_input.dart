import 'package:flutter/material.dart';

class AuthInput extends StatelessWidget {
  final String hinText;
  final TextEditingController controller;
  final bool isObscureText;

  const AuthInput(
      {super.key,
      this.isObscureText = false,
      required this.hinText,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(hintText: hinText),
      obscureText: isObscureText,
      validator: (value) {
        if (value!.isEmpty) {
          return '$hinText is missing ';
        }
        return null;
      },
    );
  }
}
