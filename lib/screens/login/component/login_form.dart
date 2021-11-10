// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
    required GlobalKey<FormState> formKey,
    required this.screenWidth,
  }) : _formKey = formKey, super(key: key);

  final GlobalKey<FormState> _formKey;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          EmailTextFormField(screenWidth: screenWidth),
          
          PasswordTextFormField(screenWidth: screenWidth),
        ],
      ),
    );
  }
}

class PasswordTextFormField extends StatelessWidget {
  const PasswordTextFormField({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: screenWidth / 10, 
          right: screenWidth / 10),
      child: TextFormField(
        obscureText: true,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          labelText: "Password",
          hintText: "Enter your Mobile / Email",
          
          suffixIcon: Icon(Icons.remove_red_eye),
        ),
      ),
    );
  }
}

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: screenWidth / 10, right: screenWidth / 10),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person),
          labelText: "Mobile / Email",
          hintText: "Enter your Mobile / Email",
          //suffix: Icon(Icons.person),
        ),
      ),
    );
  }
}
