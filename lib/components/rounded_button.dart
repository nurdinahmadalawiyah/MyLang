import 'package:flutter/material.dart';
import 'package:my_lang/constant.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final void Function() press;
  final Color color, textColor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
        width: size.width * 0.8,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: TextButton(
              style: TextButton.styleFrom(
                  padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  backgroundColor: color),
              onPressed: press,
              child: Text(
                text,
                style: TextStyle(color: textColor),
              )),
        ));
  }
}