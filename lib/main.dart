import 'package:flutter/material.dart';
import 'package:flutter_application_demo/Utilities/MyRoutes.dart';
import 'package:flutter_application_demo/pages/home_page.dart';
import 'package:flutter_application_demo/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final int days = 100;
  final int nights = 30;

  @override
  Widget build(BuildContext context) {
    //bringVegetables(thaila: true);
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(primarySwatch: Colors.green),
      // initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        MyRouts.loginRoute: (context) => LoginPage(),
        MyRouts.homeRoute: (context) => HomePage(),
      },
    );
  }

  bringVegetables({required bool thaila, int rupees = 100}) {
    if (!thaila) print("print test $rupees rupees");
  }
}
