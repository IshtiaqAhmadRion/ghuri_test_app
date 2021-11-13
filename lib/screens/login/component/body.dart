// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unused_local_variable, camel_case_types, deprecated_member_use, avoid_print, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:ghuri_test_app/api/ipinfo.dart';
import 'package:ghuri_test_app/models/ip_data_model.dart';
import 'package:ghuri_test_app/screens/home/home_screen.dart';
import 'package:ghuri_test_app/screens/registration/registration_screen.dart';

import 'login_form.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late Future<IpDataModel?> data;
  @override
  void initState() {
    super.initState();
    data = getData();
    
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    String _email;

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
            FutureBuilder<IpDataModel?>(
              future: data,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  print(snapshot.data);
                  return Text(snapshot.data!.countryName);
                }
                return CircularProgressIndicator();
                // return snapshot.hasData
                //     ? Text (snapshot.data!.countryName.toString())
                //     : CircularProgressIndicator();
              },
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
              onPressed: () {
                Navigator.pushNamed(context, HomePage.routeName);
              },
              color: Colors.yellow[700],
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
