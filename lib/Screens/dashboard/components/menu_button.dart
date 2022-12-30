import 'package:flutter/material.dart';

import 'package:waggital_vet/constants.dart';

class MenuButton extends StatefulWidget {
  final IconData icon;
  final String text;
  int pageIndex;
  final int index;
  final Color color;
  MenuButton({
    Key? key, required this.icon, required this.text, required this.index, required this.pageIndex, required this.color,
  }) : super(key: key);

  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60),
      height: 50,
      color: widget.color,
      child: TextButton.icon(
        style: ButtonStyle(

        ),
        label: Text(widget.text, style: TextStyle(
          color: kPrimaryColor
        ),),
        icon: Icon(widget.icon, color: kPrimaryColor,), onPressed: () {
          setState(() {
            widget.pageIndex = widget.index;
          });
      },
      ),
    );
  }
}
