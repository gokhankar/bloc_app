import 'package:bloc_app/core/theme/app_palette.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  final String title;
  const AuthGradientButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          gradient: const LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                AppPalette.gradient1,
                AppPalette.gradient3,
                AppPalette.gradient2
              ])),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        style: ElevatedButton.styleFrom(
            fixedSize: Size(500, 55),
            backgroundColor: AppPalette.transparentColor),
      ),
    );
  }
}
