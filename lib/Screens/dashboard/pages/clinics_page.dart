import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

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
                      });
                    }),
                  ))
                ),
              ),
            ],
          ),
        ),
        Container(
          color: kGrayColor,
          child: getTopBar(),
        ),
      ],
    );
  }

  getTopBar() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          child: Column(
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
        Icon(FontAwesomeIcons.solidBell)
      ],
    );
  }
  
}



