import 'package:flutter/material.dart';
import 'package:waggital_vet/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color fillColor, color;

  const RoundedButton({
    Key? key, required this.text, required this.onPressed, this.fillColor = kAccentColor, this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: RawMaterialButton(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            fillColor: fillColor,
            textStyle: TextStyle(
              color: color,
            ),
            onPressed: onPressed,
            child: Text(text)),
      ),
    );
  }
}
