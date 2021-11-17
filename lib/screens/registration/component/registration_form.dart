// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, override_on_non_overriding_member, prefer_final_fields, unused_field, annotate_overrides

import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  RegistrationForm({Key? key}) : super(key: key);

  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  @override
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  

  Widget build(BuildContext context) {
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
            buildMobileFormField(),
            buildPasswordFormField(),
            buildConfirmPassFormField(),
            buildShopNameFormField(),
            buildShopLinkFormField(),
            buildCityFormField(),
            buildAddressFormField(),
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
