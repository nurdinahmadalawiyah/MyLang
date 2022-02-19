import 'package:flutter/material.dart';
import 'package:my_lang/components/text_field_container.dart';
import 'package:my_lang/constant.dart';


class RoundedPasswordField extends StatelessWidget {
  final String hintext;
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged, required this.hintext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: hintext,
            icon: const Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
            suffixIcon: const Icon(
              Icons.visibility,
              color: kPrimaryColor,
            ),
            border: InputBorder.none
        ),
      ),
    );
  }
}