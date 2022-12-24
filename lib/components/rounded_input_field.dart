import 'package:flutter/material.dart';
import 'package:waggital_vet/components/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String hintText;
  const RoundedInputField({
    Key? key, required this.onChanged, required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        key: Key('email'),
        decoration: InputDecoration(
          hintText: 'Email',
          border: InputBorder.none,
        ),
      ),
    );
  }
}