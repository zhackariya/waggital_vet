import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:waggital_vet/constants.dart';

class SocialLoginContainer extends StatelessWidget {
  const SocialLoginContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        children: [
          // google
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.898, 1.0),
                  end: Alignment(-0.898, -1.0),
                  colors: [
                    Color(0xfffba464),
                    Color(0xfffba464),
                    Color(0xfff4ac68),
                    Color(0xffecb36b),
                  ],
                  stops: [0.0, 0.004, 0.432, 1.0],
                ),
                borderRadius: BorderRadius.circular(30.0)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
              child: TextButton.icon(
                onPressed: () {
                  print('Signing in...');
                },
                label: Text(
                  '   Sign in with Google',
                  style: TextStyle(
                    fontFamily: 'WorkSans-SemiBold',
                    fontSize: 15,
                    color: Color(0xffffffff),
                    letterSpacing: -0.375,
                    height: 1.8666666666666667,
                  ),
                ),
                icon: Icon(
                  FontAwesomeIcons.google,
                  color: Colors.white,
                  size: 15.0,
                ),
              ),
            ),
          ),
          // facebook
          TextButton.icon(
              onPressed: () {
                print('facebook sign in...');
              },
              icon: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.facebook,
                    color: kPrimaryColor,
                  ),
                ),
              ),
              label: Container()),
          // twitter
          TextButton.icon(
              onPressed: () {
                print('twitter sign in...');
              },
              icon: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    FontAwesomeIcons.twitter,
                    color: kPrimaryColor,
                  ),
                ),
              ),
              label: Container())
        ],
      ),
    );
  }
}