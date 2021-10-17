import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final int days = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catelogue App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of Flutter"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
