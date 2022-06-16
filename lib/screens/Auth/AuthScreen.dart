// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:amazonclone/common/Widgets/CommonBtn.dart';
import 'package:amazonclone/common/Widgets/commonInputFiled.dart';
import 'package:amazonclone/constants/GlobeColor.dart';
import "package:flutter/material.dart";

enum AuthOptions { signUp, signIn }

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);
  static const String authRouteName = "/authscreen";

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  AuthOptions? selectedOption = AuthOptions.signUp;
  final _SignUpFrmKey = GlobalKey<FormState>();
  final _singInFrmKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String errText = "";

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _nameController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.gloGreyBackgroudcolor,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: RadioListTile(
                value: AuthOptions.signUp,
                tileColor: selectedOption == AuthOptions.signUp
                    ? GlobalColors.globalBackgroundColor
                    : GlobalColors.gloGreyBackgroudcolor,
                groupValue: selectedOption,
                title: Text("Create account"),
                activeColor: GlobalColors.globalPrimaryColor,
                onChanged: (AuthOptions? selectedType) {
                  setState(() {
                    selectedOption = selectedType;
                  });
                },
              ),
            ),
            if (selectedOption == AuthOptions.signUp)
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.all(15.0),
                height: MediaQuery.of(context).size.height / 2,
                color: selectedOption == AuthOptions.signUp
                    ? GlobalColors.globalBackgroundColor
                    : GlobalColors.gloGreyBackgroudcolor,
                child: Form(
                  key: _SignUpFrmKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CommonInPutFeild(
                          label: "Email",
                          controller: _emailController,
                          erroText: errText),
                      SizedBox(
                        height: 10.0,
                      ),
                      CommonInPutFeild(
                          label: "Name",
                          controller: _nameController,
                          erroText: errText),
                      SizedBox(
                        height: 10.0,
                      ),
                      CommonInPutFeild(
                          label: "Password",
                          controller: _passwordController,
                          erroText: errText),
                      SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      CommonBtn(BtnName: "Register", OnpressedFunc: () {})
                    ],
                  ),
                ),
              ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: RadioListTile(
                  value: AuthOptions.signIn,
                  tileColor: selectedOption == AuthOptions.signIn
                      ? GlobalColors.globalBackgroundColor
                      : GlobalColors.gloGreyBackgroudcolor,
                  groupValue: selectedOption,
                  title: Text("Sign-In"),
                  activeColor: GlobalColors.globalPrimaryColor,
                  onChanged: (AuthOptions? selectedType) {
                    setState(() {
                      selectedOption = selectedType;
                    });
                  }),
            ),
            if (selectedOption == AuthOptions.signIn)
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height / 2,
                color: selectedOption == AuthOptions.signIn
                    ? GlobalColors.globalBackgroundColor
                    : GlobalColors.gloGreyBackgroudcolor,
                child: Form(
                  key: _singInFrmKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CommonInPutFeild(
                          label: "Email",
                          controller: _emailController,
                          erroText: errText),
                      SizedBox(
                        height: 10.0,
                      ),
                      CommonInPutFeild(
                          label: "Password",
                          controller: _passwordController,
                          erroText: errText),
                      SizedBox(
                        height: 50.0,
                      ),
                      CommonBtn(BtnName: "Login", OnpressedFunc: () {})
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
