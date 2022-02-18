import 'package:flutter/material.dart';
import 'package:my_lang/Screens/SplashScreen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Lang',
      home: SplashScreenPage(),
    );
  }
}

