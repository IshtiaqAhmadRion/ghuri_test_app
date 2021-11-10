// ignore_for_file: prefer_const_constructors





import 'package:flutter/cupertino.dart';
import 'package:ghuri_test_app/screens/home/home_screen.dart';
import 'package:ghuri_test_app/screens/login/login_screen.dart';
import 'package:ghuri_test_app/screens/registration/registration_screen.dart';
import 'package:ghuri_test_app/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder>routes = {
  SplashScreen.routeName:(context)=>SplashScreen(),
  LoginScreen.routeName:(context)=>LoginScreen(),
  RegScreen.routeName:(context)=>RegScreen(),
  HomePage.routeName:(context)=>HomePage(),
};