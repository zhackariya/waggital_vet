import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:waggital_vet/constants.dart';
import 'package:waggital_vet/Screens/dashboard/components/dashboard_menu_container.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


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

    return SingleChildScrollView(
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
                Container(
                  child: Column(
                    children: List.generate(menuItems.length, (index) => Container(
                      width: clampDouble(size.width * .25, 242, 300),
                      child: MaterialButton(
                          color: pageIndex == index ? kSelectedColor : kBackgroundColor,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                            child: Row(
                              children: [
                                Icon(iconList[index],size: 18,),
                                SizedBox(width: 20,),
                                Text(menuItems[index]["name"]!, style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12
                                ),)
                              ],
                            ),
                          ),
                          onPressed: (){
                        setState(() {
                          pageIndex = index;
                          print("clicked page ${pageIndex}");
                        });
                      }),
                    ))
                  ),
                ),
              ],
            ),
          ),
          //right area: dashboard items
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //top bar
              Container(
                color: kGrayColor,
                child: getTopBar(size),
              ),
              //title
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Patients',
                  style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500
                ),),
              ),
              // button and search icon
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: clampDouble(size.width * .65, 242, size.width - 200),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        color: kOrangeColor,
                        child: TextButton(onPressed: (){},
                        child: Row(
                          children: [
                            Text('ADD NEW PATIENT',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 10,
                              color: Colors.white
                            ),),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.add, color: Colors.white,
                                size: 10),
                          ],
                        ),
                        ),
                      ),
                      TextButton.icon(onPressed: (){},
                          icon: Icon(Icons.search_outlined, color: kOrangeColor,),
                          label: Text(''))
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  getTopBar(Size size) {
    return Container(
      width: clampDouble(size.width * .7, 242, size.width - 100),
      height: 90,
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello, ${widget.userFirstName}', style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w500,
                  color: kDarkTextColor,
                  fontSize: 15
                ),),
                Text('Have a nice day', style: TextStyle(
                  fontFamily: 'Open Sans',
                  color: kLightTextColor,
                  fontWeight: FontWeight.w300,
                  fontSize: 10
                ),)
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(FontAwesomeIcons.solidBell, size: 15,),
              SizedBox(
                width: 10,
              ),
              Container(
                color: kAvatarGrayColor,
                width: 1,
                height: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kAvatarGrayColor,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Suzette Rosario', style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w200,
                    color: Colors.black,
                  ),),
                  Text('Admin',style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.w200,
                    color: Colors.black,
                  ),)
                ],
              ),
              TextButton.icon(onPressed: (){}, icon: Icon(FontAwesomeIcons.angleDown, size: 8, color: Colors.black,), label: Text(''))
            ],
          )
        ],
      ),
    );
  }
  
}



