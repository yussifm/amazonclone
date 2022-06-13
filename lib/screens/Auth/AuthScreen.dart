// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import "package:flutter/material.dart";

enum AuthOptions { signUp, signIn }

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  AuthOptions? selectedOption = AuthOptions.signUp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            RadioListTile(
              value: AuthOptions.signUp,
              groupValue: selectedOption,
              title: Text("Create account"),
              onChanged: (AuthOptions? selectedType) {
                setState(() {
                  selectedOption = selectedType;
                });
              },
            ),
            if (selectedOption == AuthOptions.signUp)
              SizedBox(
                height: 200,
                child: Text("Sign UP by creating an account "),
              ),
            RadioListTile(
                value: AuthOptions.signIn,
                groupValue: selectedOption,
                title: Text("SignIn"),
                onChanged: (AuthOptions? selectedType) {
                  setState(() {
                    selectedOption = selectedType;
                  });
                }),
            if (selectedOption == AuthOptions.signIn)
              SizedBox(
                height: 200,
                child: Text("Sign in with your email and password"),
              ),
          ],
        ),
      ),
    );
  }
}
