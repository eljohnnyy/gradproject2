import 'package:flutter/material.dart';

class SignLogo extends StatelessWidget {
  const SignLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/logo.png",
          fit: BoxFit.fill,
          width: 300,
          height: 150,
        ),
        const Text(
          "قم بتسجيل دخولك",
          style: TextStyle(fontSize: 30, fontFamily: "ElMessiri"),
        ),
      ],
    );
  }
}
