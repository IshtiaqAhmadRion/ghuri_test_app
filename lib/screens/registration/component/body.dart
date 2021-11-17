// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ghuri_test_app/screens/login/login_screen.dart';
import 'package:ghuri_test_app/screens/registration/component/registration_form.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  
   bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WelcomeTextWidget(),
            RegistrationForm(),

        
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  activeColor: Colors.yellow[700],
                  value: _isClicked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isClicked = value!;
                    });
                  },
                ),
                SizedBox(width: 30),
                Text("I agree the terms and condition of \nGHURI Parcel")
              ],
            ),
            SizedBox(
              height: screenHeight / 10,
            ),
            FlatButton(
              height: screenWidth / 8,
              padding: EdgeInsets.symmetric(horizontal: screenWidth / 3),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
              color: Colors.yellow[700],
              child: Text(
                "SIGN UP",
                style: TextStyle(
                  fontSize: screenWidth / 25,
                  color: Colors.black87,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight / 8,
            )
          ],
        ),
      ),
    );
  }

 
}

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Welcome to Merchant Sign Up",
      style: TextStyle(
        fontSize: 18,
        color: Colors.black87,
        height: 2,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
