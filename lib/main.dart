import 'package:flutter/material.dart';
import 'package:flutter_application_demo/home_page.dart';

void main(List<String> args) {
  runApp(YourApp());
}

class YourApp extends StatelessWidget {
  int days = 100;
  int nights = 30;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage() ,
    );
  }
}
