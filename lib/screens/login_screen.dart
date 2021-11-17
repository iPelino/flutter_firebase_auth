import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/components/login_screen_components.dart';
import 'package:flutter_firebase_auth/constants/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final emailField = emailTextFormField();

    final passwordField = passwordTextFormField();

    final loginButton = loginElevatedButton();
    final registerButton = registerElevatedButton(context);

    return Scaffold(
      backgroundColor: black_ish,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: black_ish,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: loginForm(
                  emailField, passwordField, loginButton, registerButton),
            ),
          ),
        ),
      ),
    );
  }
}
