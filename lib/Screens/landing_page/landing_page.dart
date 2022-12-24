import 'package:flutter/material.dart';
import 'package:waggital_vet/Screens/landing_page/areas/login_area.dart';
import 'package:waggital_vet/Screens/landing_page/ui/left_bg.dart';

import 'package:waggital_vet/constants.dart';



class LandingPage extends StatefulWidget {
  const LandingPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() {
    return _LandingPageState();
  }
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SizedBox(
        width: size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // left logo image
            LeftBackground(),
            // right login area
            LoginArea()
          ],
        ),
      ),
    );
  }
}
