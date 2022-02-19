import 'package:flutter/material.dart';
import 'package:my_lang/Screens/SignUpScreen/components/body_sign_up_screen.dart';
import 'package:my_lang/constant.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: BodySingUpScreen(size: size),
    );
  }
}
