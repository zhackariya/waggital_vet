import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TablePagination extends StatelessWidget {
  const TablePagination({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      // width: clampDouble(size.width * 0.7, 242, size.width),
      child: Center(
          child: SizedBox(
            width: 250,
            child: Row(
              children: [
                Text('Items per page:',
                  style: TextStyle(
                      fontSize: 10
                  ),),
                SizedBox(width: 50,),
                DropdownButton(items: [
                  DropdownMenuItem(child: Text('1',
                    style: TextStyle(
                        fontSize: 10
                    ),)),
                ], onChanged: (ddItem){

                }),
                SizedBox(width: 50,),
                Text('1-2 of 2', style: TextStyle(
                    fontSize: 10
                ),)
              ],
            ),
          )
      ),
    );
  }
}

