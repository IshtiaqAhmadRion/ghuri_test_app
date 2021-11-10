// ignore_for_file: prefer_const_constructors



import 'package:flutter/cupertino.dart';
import 'package:ghuri_test_app/screens/login/login_screen.dart';
import 'package:ghuri_test_app/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder>routes = {
  SplashScreen.routeName:(context)=>SplashScreen(),
  LoginScreen.routeName:(context)=>LoginScreen(),
};