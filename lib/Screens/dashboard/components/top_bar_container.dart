import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants.dart';
import '../pages/dashboard_page.dart';

class TopBarContainer extends StatelessWidget {
  const TopBarContainer({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final DashboardPage widget;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: clampDouble(size.width * 0.7, 242, size.width),
      height: 90,
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, ${widget.userFirstName}',
                style: TextStyle(
                    fontFamily: 'Open Sans', fontWeight: FontWeight.w500, color: kDarkTextColor, fontSize: 15),
              ),
              Text(
                'Have a nice day',
                style: TextStyle(
                    fontFamily: 'Open Sans', color: kLightTextColor, fontWeight: FontWeight.w300, fontSize: 10),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.solidBell,
                size: 15,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                color: kAvatarGrayColor,
                width: 1,
                height: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kAvatarGrayColor,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${widget.userFirstName} ${widget.userLastName}',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w200,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Admin',
                    style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w200,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.angleDown,
                    size: 8,
                    color: Colors.black,
                  ),
                  label: Text(''))
            ],
          )
        ],
      ),
    );
  }
}