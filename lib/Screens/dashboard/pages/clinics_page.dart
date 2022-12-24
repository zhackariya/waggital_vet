import 'package:flutter/material.dart';
import 'package:waggital_vet/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/menu_button.dart';

// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
class ClinicsPage extends StatefulWidget {
  final String title;

  const ClinicsPage({Key? key, required this.title}) : super(key: key);

  @override
  State<ClinicsPage> createState() => _ClinicsPageState();
}

class _ClinicsPageState extends State<ClinicsPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        children: [
          Container(
            width: size.width * .25,
            color: kBackgroundColor,
            child: Column(
              children: [
                Image(image: AssetImage('images/waggitalnobg.png')),
                Column(
                  children: [
                    MenuButton(
                      icon: Icons.keyboard_command_key,
                      text: 'Dashboard',
                    ),
                    MenuButton(text: 'Clients', icon: FontAwesomeIcons.person),
                    MenuButton(icon: FontAwesomeIcons.dog, text: 'Patients'),
                    MenuButton(icon: Icons.calendar_month, text: 'Calendar'),
                    MenuButton(icon: FontAwesomeIcons.stethoscope, text: 'Services'),
                    MenuButton(icon: FontAwesomeIcons.idBadge, text: 'Employees'),
                    MenuButton(icon: FontAwesomeIcons.houseChimneyMedical, text: 'Clinics'),
                    MenuButton(icon: Icons.settings, text: 'Settings'),

                  ],
                )
              ],
            ),
          ),
          Container(
            color: kGrayColor,
          ),
        ],
      ),
    );
  }
}


