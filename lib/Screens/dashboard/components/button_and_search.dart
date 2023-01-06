import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ButtonAndSearch extends StatelessWidget {
  final String buttonText;
  const ButtonAndSearch({
    Key? key, required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: clampDouble(size.width * .7, 242, size.width - 200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              color: kOrangeColor,
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      buttonText,
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10, color: Colors.white),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.add, color: Colors.white, size: 10),
                  ],
                ),
              ),
            ),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.search_outlined,
                  color: kOrangeColor,
                ),
                label: Text(''))
          ],
        ),
      ),
    );
  }
}

