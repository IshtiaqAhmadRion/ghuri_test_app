// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unused_local_variable, camel_case_types

import 'package:flutter/material.dart';

import 'login_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

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
            GestureDetector(
              onTap: () {
                
              },
              child: Text(
                "Create a new Account",
                style: TextStyle(color: Colors.black54),
              ),
            ),
          ],
        ),
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
