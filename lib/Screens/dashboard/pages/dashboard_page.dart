// import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:waggital_vet/constants.dart';
import 'package:waggital_vet/Screens/dashboard/components/dashboard_menu_container.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../components/top_bar_container.dart';

class DashboardPage extends StatefulWidget {
  final String title;
  final String userFirstName;
  final String userLastName;

  const DashboardPage({Key? key, required this.title, required this.userFirstName, required this.userLastName}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int pageIndex = 3;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kGrayColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // left area: menu
            Container(
              // width: clampDouble(size.width * .25, 242, 300),
              color: kBackgroundColor,
              child: Column(
                children: [
                  Image(image: AssetImage('images/waggitalnobg.png')),
                  Column(
                      children: List.generate(
                          menuItems.length,
                          (index) => Container(
                                width: clampDouble(size.width * .25, 242, 300),
                                child: MaterialButton(
                                    color: pageIndex == index ? kSelectedColor : kBackgroundColor,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                                      child: Row(
                                        children: [
                                          Icon(
                                            iconList[index],
                                            size: 18,
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            menuItems[index]["name"]!,
                                            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                                          )
                                        ],
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        pageIndex = index;
                                        print("clicked page ${pageIndex}");
                                      });
                                    }),
                              ))),
                ],
              ),
            ),
            //right area: dashboard items
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //top bar
                    TopBarContainer(widget: widget),
                    //title
                    getTitle(),
                    // button and search icon
                    getButtonAndSearch(size),
                    // table area
                    getTable(size),
                    SizedBox(
                      height: 100,
                    ),
                    getPagination(size)

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }








  

  Widget getTitle() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'Patients',
        style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget getButtonAndSearch(Size size) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: clampDouble(size.width * .65, 242, size.width - 200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              color: kOrangeColor,
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      'ADD NEW PATIENT',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10, color: Colors.white),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.add, color: Colors.white, size: 10),
                  ],
                ),
              ),
            ),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.search_outlined,
                  color: kOrangeColor,
                ),
                label: Text(''))
          ],
        ),
      ),
    );
  }

  Widget getTable(Size size) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: clampDouble(size.width * .7, 242, size.width - 100),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: DataTable(
            headingRowColor: MaterialStateColor.resolveWith((states) => kGrayColor),

            columns: [
              DataColumn(label: Text('Patient')),
              DataColumn(
                label: Expanded(child: Text('Pet Name')),

              ),
              DataColumn(label: Text('Owner')),
              DataColumn(label: Text('Specie')),
              DataColumn(label: Text('Image')),
              DataColumn(label: Expanded(child: Text('Action'))),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('2')),
                DataCell(Text('3')),
                DataCell(Text('4')),
                DataCell(Text('5')),
                DataCell(Text('6')),
              ]),
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('2')),
                DataCell(Text('3')),
                DataCell(Text('4')),
                DataCell(Text('5')),
                DataCell(Text('6')),
              ]),
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('2')),
                DataCell(Text('3')),
                DataCell(Text('4')),
                DataCell(Text('5')),
                DataCell(Text('6')),
              ]),
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('2')),
                DataCell(Text('3')),
                DataCell(Text('4')),
                DataCell(Text('5')),
                DataCell(Text('6')),
              ]),
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('2')),
                DataCell(Text('3')),
                DataCell(Text('4')),
                DataCell(Text('5')),
                DataCell(Text('6')),
              ]),
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('2')),
                DataCell(Text('3')),
                DataCell(Text('4')),
                DataCell(Text('5')),
                DataCell(Text('6')),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget getPagination(Size size) {
    return SizedBox(
      width: clampDouble(size.width * 0.7, 242, size.width),
      child: Center(
          child: SizedBox(
            width: 300,
            child: Row(
              children: [
                Text('Items per page:',
                style: TextStyle(
                  fontSize: 10
                ),),
                SizedBox(width: 50,),
                DropdownButton(items: [
                  DropdownMenuItem(child: Text('6',
                  style: TextStyle(
                    fontSize: 10
                  ),)),
                ], onChanged: (ddItem){

                }),
                SizedBox(width: 50,),
                Text('1-4 of 10', style: TextStyle(
                  fontSize: 10
                ),)
              ],
            ),
          )
      ),
    );
  }
}


