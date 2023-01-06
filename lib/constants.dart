import 'dart:ui';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const kPrimaryColor = Color(0xff5c464d);
const kBackgroundColor = Color(0xfffdf7f1);
const kAccentColor = Color(0xff5ba57a);
const kGrayColor = Color(0xfff5f5f5);
const kSelectedColor = Color(0xfffdecdf);//##FDECDF
const kDarkTextColor = Color(0xff0a0a0a);
const kLightTextColor = Color(0xff757575);
const kAvatarGrayColor = Color(0xffc2c2c2); //#C2C2C2
const kOrangeColor = Color(0xffff914d); //##FF914D

const iconList = [
  FontAwesomeIcons.person,
  FontAwesomeIcons.dog,
  FontAwesomeIcons.calendar,
  FontAwesomeIcons.stethoscope,
  FontAwesomeIcons.idBadge,
  FontAwesomeIcons.houseChimneyMedical,
  FontAwesomeIcons.gears,

];

const menuItems = [
  {
    "index":"0",
    "name":"Clients",
    "single":"Client"
  },
  {
    "index":"1",
    "name":"Patients",
    "single":"Patient"
  },
  {
    "index":"2",
    "name":"Calendar",
    "single":"Appointment"
  },
  {
    "index":"3",
    "name":"Services",
    "single":"Service"
  },
  {
    "index":"4",
    "name":"Employees",
    "single":"Employee"
  },
  {
    "index":"5",
    "name":"Clinics",
    "single":"Clinic"
  },
  {
    "index":"6",
    "name":"Settings",
    "single":"Configuration"
  },
];