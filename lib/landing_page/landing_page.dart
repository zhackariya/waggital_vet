import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:waggital_vet/landing_page/ui/left_bg.dart';

//suppress inspections
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
    return Scaffold(
      backgroundColor: const Color(0xfffdf7f1),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // left
          const SizedBox(
            width: 350.0,
            height: 887.0,
            child: LeftBackground(),
          ),
          // right login area
          Column(
            children: const [
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 80.0, horizontal: 20.0),
                child: Text(
                  'Sign in to waggital.',
                  style: TextStyle(
                    fontFamily: 'Nunito-Bold',
                    fontSize: 36,
                    overflow: TextOverflow.ellipsis,
                    color: Color(0xff5c464d),
                    height: 1.66666666667,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
