import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:waggital_vet/constants.dart';
import '../../../dummy/data.dart';
import '../../../models/patient.dart';

class PatientsTable extends StatefulWidget {
  const PatientsTable({
    Key? key,
  }) : super(key: key);

  @override
  State<PatientsTable> createState() => _PatientsTableState();
}

class _PatientsTableState extends State<PatientsTable> {
  List<Patient> patientList = <Patient>[];
  late DataTableSource _patientData;

  @override
  void initState() {
    for (var p in patients) {
      int id = p["id"] as int;
      String name = p["name"] as String;
      int ownerId = p["owner"] as int;
      int specieId = p["specie"] as int;
      String image = p["image"] as String;

      patientList.add(Patient(id, name, ownerId, specieId, image));
    }
    _patientData = PatientData(patientList);
    super.initState();
  }

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
              PaginatedDataTable(
                columns: getColumns(),
                source: _patientData,
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<DataColumn> getColumns() {
    return [
      DataColumn(label: Text('Patient ID')),
      DataColumn(
        label: Expanded(child: Text('Pet Name')),
      ),
      DataColumn(label: Text('Owner')),
      DataColumn(label: Text('Specie')),
      DataColumn(label: Text('Image')),
      DataColumn(label: Expanded(child: Text('Action'))),
    ];
  }
}

class PatientData extends DataTableSource {
  final List<Patient> patientList;

  PatientData(this.patientList);

  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(patientList[index].id.toString())),
      DataCell(Text(patientList[index].name.toString())),
      DataCell(Text(getOwner(index))),
      DataCell(Text(getSpecie(index))),
      DataCell(
        Image.network(
          patientList[index].image.toString(),
          width: 64,
          height: 42,
          errorBuilder: (BuildContext context, Object errorObject, StackTrace? errorStack) {
            if (errorStack != null) {
              return Icon(
                FontAwesomeIcons.squareXmark,
                color: kSelectedColor,
              );
            }
            return Text('Network Image   .Error');
          },
          loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) {
              return child;
            }
            return CircularProgressIndicator();
          },
        ),
      ),
      DataCell(Text('')),
    ]);
  }

  String getSpecie(int index) => species[patientList[index].specie-1]["name"].toString();

  String getOwner(int index) => clients[patientList[index].owner-1]["firstname"].toString();

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => patientList.length;

  @override
  int get selectedRowCount => 0;
}
