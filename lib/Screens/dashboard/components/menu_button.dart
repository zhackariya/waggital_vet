import 'package:flutter/material.dart';

import 'package:waggital_vet/constants.dart';

class MenuButton extends StatelessWidget {
  final IconData icon;
  final String text;
  MenuButton({
    Key? key, required this.icon, required this.text,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color color = text == 'Clinics' ? kSelectedColor : kBackgroundColor;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60),
      height: 50,
      color: color,
      child: TextButton.icon(
        onPressed: () {},
        label: Text(text, style: TextStyle(
          color: kPrimaryColor
        ),),
        icon: Icon(icon, color: kPrimaryColor,),
      ),
    );
  }
}
