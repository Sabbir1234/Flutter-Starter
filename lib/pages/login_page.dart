import 'package:flutter/material.dart';
import 'package:flutter_application_demo/Utilities/MyRoutes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login-image.png",
              fit: BoxFit.fill,
            ),
            SizedBox(height: 24),
            Text(
              "Welcome",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Your Name", labelText: "User Name"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Your Password", labelText: "Password"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("Hi CodePur");
                      Navigator.pushNamed(context, MyRouts.homeRoute);
                    },
                    child: Text("Login"),
                    style: TextButton.styleFrom(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
