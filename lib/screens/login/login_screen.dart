// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ghuri_test_app/screens/login/component/body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String routeName = "/Login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
