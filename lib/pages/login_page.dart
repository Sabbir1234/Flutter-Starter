import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_demo/Utilities/MyRoutes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changed = false;
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
              "Welcome $name",
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
                    onChanged: (text) {
                      name = text;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Your Password", labelText: "Password"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () async {
                      changed = true;
                      setState(() {});
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRouts.homeRoute);
                    },
                    child: AnimatedContainer(
                      width: changed ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: changed
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(color: Colors.white),
                            ),
                      decoration: BoxDecoration(
                          borderRadius: changed
                              ? BorderRadius.circular(50.0)
                              : BorderRadius.circular(8.0),
                          color: Colors.deepPurpleAccent),
                      duration: Duration(seconds: 1),
                    ),
                  )
                  // ElevatedButton(
                  //   onPressed: () {
                  //     print("Hi CodePur");
                  //     Navigator.pushNamed(context, MyRouts.homeRoute);
                  //   },
                  //   child: Text("Login"),
                  //   style: TextButton.styleFrom(),
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
