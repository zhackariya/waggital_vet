import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:waggital_vet/Screens/landing_page/components/social_login_container.dart';

import 'package:waggital_vet/constants.dart';
import 'package:waggital_vet/components/rounded_input_field.dart';
import 'package:waggital_vet/components/rounded_password_field.dart';
import 'package:waggital_vet/Screens/landing_page/components/rounded_button.dart';

class LoginArea extends StatefulWidget {
  const LoginArea({Key? key}) : super(key: key);

  @override
  State<LoginArea> createState() => _LoginAreaState();
}

class _LoginAreaState extends State<LoginArea> {
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      child: Column(
        children: [
          getTitleText(),
          SocialLoginContainer(),
          getAlterSigninText(),
          getEmailPasswordBoxes(),
          // getPasswordOptions(),
          RoundedButton(
            text: 'Sign In', onPressed: () { print('clicked sign in');},
            
          )
        ],
      ),
    );
  }

  // methods

  getPasswordOptions() {
    return Row(
      children: [],
    );
  }
}



getTitleText() {
  return const Padding(
    padding: EdgeInsets.symmetric(vertical: 80.0, horizontal: 80.0),
    child: Text(
      'Sign in to waggital.',
      style: TextStyle(
        fontFamily: 'Nunito-Bold',
        fontSize: 36,
        overflow: TextOverflow.ellipsis,
        color: kPrimaryColor,
        height: 1.66666666667,
      ),
    ),
  );
}

getAlterSigninText() {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 100.0),
        width: 50.0,
        height: 1.0,
        color: kPrimaryColor,
      ),
      Text(
        'Or sign in using your email address',
        style: TextStyle(
          color: kPrimaryColor,
          fontFamily: 'WorkSans-Regular',
          fontSize: 16,
          letterSpacing: -0.4,
          height: 1.75,
        ),
      )
    ],
  );
}

getEmailPasswordBoxes() {
  return Column(
    children: [
      RoundedInputField(
        hintText: 'Email',
        onChanged: (value) {},
      ),
      RoundedPasswordField(
        onChanged: (String value) {},
      ),
    ],
  );
}
