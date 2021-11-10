// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unused_local_variable, camel_case_types, deprecated_member_use

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ghuri_test_app/screens/home/home_screen.dart';
import 'package:ghuri_test_app/screens/registration/registration_screen.dart';
import 'package:http/http.dart' as http;
import 'login_form.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
 Future getUserDate() async {
    var response =
        await http.get(Uri.https("jsonplaceholder.typicode.com", 'users'));
    var jsonDate = jsonDecode(response.body);
    List<User> users = [];
    for (var u in jsonDate) {
      User user = User(u["name"], u["email"], u["userNmae"]);
      users.add(user);
    }
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight / 20,
              width: double.infinity,
            ),
            LoginLogo(screenWidth: screenWidth),
            SizedBox(
              height: screenHeight / 6,
            ),
            LoginForm(formKey: _formKey, screenWidth: screenWidth),
            SizedBox(
              height: screenHeight / 10,
            ),
            CreateNewAccount(),
            SizedBox(
              height: screenHeight / 10,
            ),
            FlatButton(
              height: screenWidth / 8,
              padding: EdgeInsets.symmetric(horizontal: screenWidth / 3),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () => Navigator.pushNamed(context, HomePage.routeName),
              color: Colors.yellow,
              child: Text(
                "LOGIN",
                style: TextStyle(
                  fontSize: screenWidth / 25,
                  color: Colors.black87,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class User {
  final String name, email, userNmae;

  User(this.name, this.email, this.userNmae);
}

class CreateNewAccount extends StatelessWidget {
  const CreateNewAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, RegScreen.routeName),
      child: Text(
        "Create a new Account",
        style: TextStyle(color: Colors.black54),
      ),
    );
  }
}

class LoginLogo extends StatelessWidget {
  const LoginLogo({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: screenWidth * .2, right: screenWidth * .2),
      child: Image.asset(
        "assets/images/ghuri_parcel_logo.png",
      ),
    );
  }
}
