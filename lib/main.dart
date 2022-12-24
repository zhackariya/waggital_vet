import 'package:flutter/material.dart';
import 'package:waggital_vet/landing_page/ui/left_bg.dart';

import 'landing_page/landing_page.dart';

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
      home: const LandingPage(title: ''),
    );
  }
}
