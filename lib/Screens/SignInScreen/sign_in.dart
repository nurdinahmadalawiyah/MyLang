import 'package:flutter/material.dart';
import 'package:my_lang/Screens/SignInScreen/components/body_sign_in_screen.dart';
import 'package:my_lang/constant.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: BodySignInScreen(size: size),
    );
  }
}
