// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ghuri_test_app/routes.dart';
import 'package:ghuri_test_app/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    
    );
  }
}
