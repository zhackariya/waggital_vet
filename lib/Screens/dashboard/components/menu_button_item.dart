import 'package:flutter/material.dart';

import '../../../constants.dart';


class MenuButtonItem extends StatelessWidget {
  final int index;
  const MenuButtonItem({
    Key? key, required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
      child: Row(
        children: [
          Icon(
            iconList[index],
            size: 18,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            menuItems[index]["name"]!,
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
          )
        ],
      ),
    );
  }
}
