import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:waggital_vet/constants.dart';
import 'menu_button.dart';

class DashboardMenuContainer extends StatefulWidget {
  DashboardMenuContainer({
    Key? key,
    required this.size,
    required this.pageIndex,
  }) : super(key: key);

  final Size size;
  int pageIndex;

  @override
  State<DashboardMenuContainer> createState() => _DashboardMenuContainerState();
}

class _DashboardMenuContainerState extends State<DashboardMenuContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: clampDouble(widget.size.width * .25, 242, 300),
      color: kBackgroundColor,
      child: Column(
        children: [
          Image(image: AssetImage('images/waggitalnobg.png')),
          Column(
            children: [
              MenuButton(
                icon: Icons.keyboard_command_key,
                text: 'Dashboard',
                index: -1,
                pageIndex: widget.pageIndex, color: widget.pageIndex == -1 ? kSelectedColor : kBackgroundColor,
              ),
              MenuButton(icon: FontAwesomeIcons.person, text: 'Clients', index: 0,
                  pageIndex: widget.pageIndex, color: widget.pageIndex == 0 ? kSelectedColor : kBackgroundColor,
              ),
              MenuButton(icon: FontAwesomeIcons.dog, text: 'Patients',
                  index: 1,
                  pageIndex: widget.pageIndex, color: widget.pageIndex == 1 ? kSelectedColor : kBackgroundColor, ),
              MenuButton(icon: Icons.calendar_month, text: 'Calendar',
                  index: 2,
                  pageIndex: widget.pageIndex, color: widget.pageIndex == 2 ? kSelectedColor : kBackgroundColor),
              MenuButton(icon: FontAwesomeIcons.stethoscope, text: 'Services',
                  index: 3,
                  pageIndex: widget.pageIndex, color: widget.pageIndex == 3 ? kSelectedColor : kBackgroundColor),
              MenuButton(icon: FontAwesomeIcons.idBadge, text: 'Employees',
                  index: 4,
                  pageIndex: widget.pageIndex, color: widget.pageIndex == 4 ? kSelectedColor : kBackgroundColor),
              MenuButton(icon: FontAwesomeIcons.houseChimneyMedical, text: 'Clinics',
                  index: 5,
                  pageIndex: widget.pageIndex, color: widget.pageIndex == 5 ? kSelectedColor : kBackgroundColor),
              MenuButton(icon: Icons.settings, text: 'Settings',
                  index: 6,
                  pageIndex: widget.pageIndex, color: widget.pageIndex == 6 ? kSelectedColor : kBackgroundColor),

            ],
          )
        ],
      ),
    );
  }
}
