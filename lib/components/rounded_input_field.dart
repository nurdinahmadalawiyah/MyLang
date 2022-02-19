import 'package:flutter/material.dart';
import 'package:my_lang/components/text_field_container.dart';
import 'package:my_lang/constant.dart';

class RoundedInputField extends StatelessWidget {
  final String hintext;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintext,
    this.icon = Icons.email,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: kPrimaryColor,
            ),
            hintText: hintext,
            border: InputBorder.none),
      ),
    );
  }
}