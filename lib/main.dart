import 'package:flutter/material.dart';
import 'package:waggital_vet/Screens/dashboard/pages/dashboard_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Waggital',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardPage(title: '', userFirstName: 'Suzette', userLastName: 'Rosario',),
    );
  }
}
