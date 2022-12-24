import 'package:flutter/material.dart';
import 'package:waggital_vet/components/text_field_container.dart';

import '../constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key, required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      key: Key('password'),
      child: TextField(
        onChanged: onChanged,
        obscureText: true,
        decoration: InputDecoration(
            hintText: '********',
            border: InputBorder.none,
            suffixIcon: Icon(Icons.visibility, color: kPrimaryColor,)
        ),
      ),
    );
  }
}