import 'package:flutter/material.dart';
import 'package:waggital_vet/constants.dart';

class AddPatientDialog extends StatelessWidget {
  const AddPatientDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Add New Patients Details'),
        Container(height: 1, color: kGrayColor, padding: EdgeInsets.all(20),),

      ],
    );
  }
}
