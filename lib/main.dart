import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(YourApp());
}

class YourApp extends StatelessWidget {
  const YourApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("Welcome to 30 days of Flutter"),
          ),
        ),
      ),
    );
  }
}
