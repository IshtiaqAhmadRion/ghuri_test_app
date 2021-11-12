// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ghuri_test_app/screens/login/login_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
            Form(
              key: _formKey,
              child: Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        buildFirstNameTextFormField(),
                        SizedBox(
                          width: MediaQuery.of(context).size.height / 20,
                        ),
                        buildLastNameTextFormField(),
                      ],
                    ),
                    buildEmailFormField(),
                    buildMobileFormField(),
                    buildPasswordFormField(),
                    buildConfirmPassFormField(),
                    buildShopNameFormField(),
                    buildShopLinkFormField(),
                    buildCityFormField(),
                    buildAddressFormField(),
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
                   SizedBox(height: screenHeight/10,),
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
            SizedBox(height: screenHeight/8,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Address",
        prefixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(start: 0),
          child: Icon(Icons.location_pin),
        ),
      ),
    );
  }

  TextFormField buildCityFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: "City",
        prefixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(start: 0),
          child: Icon(Icons.location_city_sharp),
        ),
      ),
    );
  }

  TextFormField buildShopLinkFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Shop Online Link (Optional)",
        prefixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(start: 0),
          child: Icon(Icons.link_sharp),
        ),
      ),
    );
  }

  TextFormField buildShopNameFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Shop Name",
        prefixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(start: 0),
          child: Icon(Icons.shopping_bag),
        ),
      ),
    );
  }

  TextFormField buildConfirmPassFormField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Confirm Password",
        prefixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(start: 0),
          child: Icon(Icons.vpn_key),
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        prefixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(start: 0),
          child: Icon(Icons.vpn_key),
        ),
      ),
    );
  }

  TextFormField buildMobileFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: "Mobile",
        prefixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(start: 0),
          child: Icon(Icons.phone_outlined),
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "Email",
        prefixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(start: 0),
          child: Icon(Icons.email),
        ),
      ),
    );
  }

  Expanded buildLastNameTextFormField() {
    return Expanded(
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Last Name",
          prefixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(start: 0),
            child: Icon(Icons.person),
          ),
        ),
      ),
    );
  }

  Expanded buildFirstNameTextFormField() {
    return Expanded(
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'First Name',
          prefixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(start: 0),
            child: Icon(Icons.person),
          ),
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
