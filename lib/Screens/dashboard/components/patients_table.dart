import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:waggital_vet/Screens/dashboard/components/table_pagination.dart';

import '../../../constants.dart';

class PatientsTable extends StatelessWidget {
  const PatientsTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: clampDouble(size.width * .7, 242, size.width - 100),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DataTable(
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
      SizedBox(
      height: 100,
    ),
    TablePagination()

            ],
          ),
        ),
      ),
    );
  }
}

