import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants.dart';
import '../../../models/user.dart';
import '../pages/dashboard_page.dart';
import 'package:intl/intl.dart' show toBeginningOfSentenceCase;

class TopBarContainer extends StatelessWidget {
  final User currentUser;

  const TopBarContainer({
    Key? key,
    required this.currentUser,
  }) : super(key: key);

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
                'Hello, ${currentUser.firstName}',
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
                    '${currentUser.firstName} ${currentUser.lastName}',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w200,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    toBeginningOfSentenceCase(currentUser.role)!,
                    style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w200,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              // TextButton.icon(
              //     onPressed: () {},
              //     icon: Icon(
              //       FontAwesomeIcons.angleDown,
              //       size: 8,
              //       color: Colors.black,
              //     ),
              //     label: Text(''))
              DropdownButton(
                  iconSize: 8,
                  isDense: true,
                  underline: Container(),
                  icon: Icon(
                    FontAwesomeIcons.angleDown,
                    size: 8,
                    color: Colors.black,
                  ),
                  style: TextStyle(color: Colors.black, fontSize: 8),
                  hint: Text(''),
                  items: [
                    DropdownMenuItem(value: 'prefs', child: Text('Preferences',style: TextStyle(fontSize: 8),),),
                    DropdownMenuItem(value: 'logout', child: Text('Logout',style: TextStyle(fontSize: 8),),)
                  ],
                  onChanged: (selected) {})
            ],
          )
        ],
      ),
    );
  }
}
