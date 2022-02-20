import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
            color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 8,
                  offset: const Offset(6, 3), // Shadow position
                ),
              ],
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