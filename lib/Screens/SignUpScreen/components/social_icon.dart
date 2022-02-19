import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_lang/constant.dart';

class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final void Function() press;
  const SocialIcon({
    Key? key,
    required this.iconSrc,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: kPrimaryLightColor,
              ),
              shape: BoxShape.circle),
          child: SvgPicture.asset(
            iconSrc,
            height: 50,
            width: 50,
          )
      ),
    );
  }
}