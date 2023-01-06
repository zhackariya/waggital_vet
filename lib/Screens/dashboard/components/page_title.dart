import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({
    Key? key,
    required this.pageTitle,
  }) : super(key: key);

  final String pageTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        pageTitle,
        style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
      ),
    );
  }
}



