import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:waggital_vet/Screens/dashboard/pages/dashboard_page.dart';

import 'models/patient.dart';
import 'models/user.dart';
import 'dummy/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => User(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Waggital',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DashboardPage(title: ''),
      ),
    );
  }
}
