import 'package:flutter/material.dart';
import 'package:waggital_vet/Screens/dashboard/pages/clinics_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Waggital',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ClinicsPage(title: '', userFirstName: 'Suzette'),
    );
  }
}
