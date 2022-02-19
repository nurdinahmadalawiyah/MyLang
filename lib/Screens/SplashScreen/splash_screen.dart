import 'package:flutter/material.dart';
import 'dart:async';
import 'package:my_lang/Screens/HomeScreen/home_screen.dart';
import 'package:my_lang/Screens/SignUpScreen/sign_up.dart';
import 'package:my_lang/components/logo_components.dart';
import 'package:my_lang/constant.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return SignUpScreen();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: LogoComponents(size: size),
      ),
    );
  }
}
