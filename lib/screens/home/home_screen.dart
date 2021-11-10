// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ghuri_test_app/screens/home/components/body.dart';

class HomePage extends StatelessWidget {
  static String routeName = "/home";
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
