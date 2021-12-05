// confirm pass complete need to work shop name and go on

// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, override_on_non_overriding_member, prefer_final_fields, unused_field, annotate_overrides, avoid_print, deprecated_member_use, unused_local_variable

import 'package:flutter/material.dart';
import 'package:ghuri_test_app/constants.dart';
import 'package:ghuri_test_app/screens/login/login_screen.dart';

class RegistrationForm extends StatefulWidget {
  RegistrationForm({Key? key}) : super(key: key);

  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  @override
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // ignore: prefer_typing_uninitialized_variables
  String fName = '',
      lName = '',
      email = '',
      mobile = '',
      pass = '',
      confirmPass = '',
      shopName = '',
      shopUrl = '',
      city = '',
      address = '';

  bool _isClicked = false;
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Form(
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
            SizedBox(
              height: screenHeight / 10,
            ),
            FlatButton(
              height: screenWidth / 8,
              padding: EdgeInsets.symmetric(horizontal: screenWidth / 3),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, LoginScreen.routeName);
                }
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
          ],
        ),
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue!,
      validator: (value) {
        if (value!.isEmpty) {
          return kAdressNullError;
        }
        return null;
      },
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
      onSaved: (newValue) => city = newValue!,
      validator: (value) {
        if (value!.isEmpty) {
          return kCityNullError;
        }
        return null;
      },
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
      onSaved: (newValue) => shopUrl = newValue!,
      validator: (value) {
        if (value!.isEmpty) {
          return kShopLinkNullError;
        } else if (!urlValidatorRegExp.hasMatch(value)) {
          return kValidUrlError;
        }
        return null;
      },
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
      onSaved: (newValue) => shopName = newValue!,
      validator: (value) {
        if (value!.isEmpty) {
          return kShopNameNullError;
        }
        return null;
      },
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
      onSaved: (newValue) => confirmPass = newValue!,
      validator: (value) {
        if (value!.isEmpty) {
          return kPassNullError;
        } else if (value != pass) {
          return kMathcPassError;
        }
        return null;
      },
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
      onSaved: (newValue) => pass = newValue!,
      validator: (value) {
        if (value!.isEmpty) {
          return kPassNullError;
        } else if (value.length < 8) {
          return kShortPassError;
        }

        return null;
      },
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
      onSaved: (value) => mobile = value!,
      validator: (value) {
        if (value!.isEmpty) {
          return kNumberError;
        } else if (value.length < 11 || value.length > 11) {
          return kValidNumberError;
        }
        return null;
      },
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
      onSaved: (value) => email = value!,
      validator: (value) {
        if (value!.isEmpty) {
          return kEmailNullError;
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          return kInvalidEmailError;
        }
        return null;
      },
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
        onSaved: (value) => lName = value!,
        validator: (value) {
          if (value!.isEmpty) {
            return kLastNameError;
          }
          return null;
        },
        keyboardType: TextInputType.name,
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
        onSaved: (value) => fName = value!,
        validator: (value) {
          if (value!.isEmpty) {
            return kFirstNameError;
          }
          return null;
        },
        keyboardType: TextInputType.name,
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
