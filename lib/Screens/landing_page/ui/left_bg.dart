import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LeftBackground extends StatefulWidget {
  const LeftBackground({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LeftBackgroundState();
  }
}

class _LeftBackgroundState extends State<LeftBackground> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.35,
      child: Container(
        constraints: BoxConstraints.tightFor(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/dog.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(250.0)),
        ),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox( height: 50.0, width: 200.0,
                  child: Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Color(0xffffffff),
                        borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(100.0)),
                    ),
                  child: const Image(
                      image: AssetImage('images/waggitalnobg.png'),
            fit: BoxFit.fitHeight),
                  ),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
