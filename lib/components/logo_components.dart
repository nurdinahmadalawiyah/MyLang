import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class LogoComponents extends StatelessWidget {
  const LogoComponents({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
              "assets/icons/logo.svg",
              height: size.height * 0.15
          ),
          SizedBox(height: size.height * 0.03),
          const Text(
            "My Lang",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
        ]);
  }
}