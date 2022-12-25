import 'package:flutter/material.dart';
import 'package:waggital_vet/constants.dart';
import 'package:waggital_vet/Screens/dashboard/components/dashboard_menu_container.dart';


class ClinicsPage extends StatefulWidget {
  final String title;
  final String userFirstName;


  const ClinicsPage({Key? key, required this.title, required this.userFirstName}) : super(key: key);

  @override
  State<ClinicsPage> createState() => _ClinicsPageState();
}

class _ClinicsPageState extends State<ClinicsPage> {
  int pageIndex = 3;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: Row(
        children: [
          DashboardMenuContainer(size: size, pageIndex: pageIndex),
          Container(
            color: kGrayColor,
            child: getTopBar(),
          ),
        ],
      ),
    );
  }

  getTopBar() {
    return Container(
      child:
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              Text('Hello, ${widget.userFirstName}', style: TextStyle(
                fontFamily: 'Open Sans',
                color: kDarkTextColor,
                fontSize: 15
              ),),
              Text('Have a nice day', style: TextStyle(
                fontFamily: 'Open Sans',
                color: kLightTextColor,
                fontSize: 10
              ),)
            ],
          )
        ],
      ),
    );
  }
  
}



