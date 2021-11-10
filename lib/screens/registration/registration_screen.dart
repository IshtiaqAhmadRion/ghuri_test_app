// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ghuri_test_app/screens/registration/component/body.dart';

class RegScreen extends StatelessWidget {
  static String routeName = "/reg";
  const RegScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
