// import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:waggital_vet/Screens/dashboard/components/patients_table.dart';
import 'package:waggital_vet/Screens/dashboard/components/table_pagination.dart';
import 'package:waggital_vet/constants.dart';
import 'package:waggital_vet/Screens/dashboard/components/dashboard_menu_container.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../../../models/user.dart';
import '../components/button_and_search.dart';
import '../components/menu_button_item.dart';
import '../components/page_title.dart';
import '../components/top_bar_container.dart';

class DashboardPage extends StatefulWidget {
  final String title;


  const DashboardPage({Key? key, required this.title}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int pageIndex = 3;
  String pageTitle = 'Services';

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    Size size = MediaQuery
        .of(context)
        .size;
    var dbWidth = clampDouble(size.width * 0.7, 242, size.width);
    return Scaffold(
      backgroundColor: kGrayColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // left area: menu
            Container(
              height: size.height,
              color: kBackgroundColor,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Image(image: AssetImage('images/waggitalnobg.png')),
                    Column(
                        children: List.generate(
                            menuItems.length,
                                (index) =>
                                Container(
                                  width: clampDouble(size.width * .25, 242, 300),
                                  child: MaterialButton(
                                      color: pageIndex == index ? kSelectedColor : kBackgroundColor,
                                      child: MenuButtonItem(index: index),
                                      onPressed: () {
                                        setState(() {
                                          pageIndex = index;
                                          pageTitle = menuItems[index]["name"]!;
                                          print("clicked page ${pageIndex}");
                                        });
                                      }),
                                ))),
                  ],
                ),
              ),
            ),
            /**
             * Page displayed here must correspond to the clicked item
             * on the left menu area of the dashboard :
             * **/
            //right area: dashboard items
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //top bar
                  TopBarContainer(currentUser: user),
                  //title
                  PageTitle(pageTitle: pageTitle),
                  Column(children: [
                    // button and search icon
                    pageIndex < 6 ? ButtonAndSearch(buttonText: 'ADD NEW ${menuItems[pageIndex]["single"]!.toUpperCase()}',) : Container(),
                    // table area
                    pageIndex == 1 ? PatientsTable() : CircularProgressIndicator()

                  ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}







  






