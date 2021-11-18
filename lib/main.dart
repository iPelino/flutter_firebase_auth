import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/constants/colors.dart';
import 'package:flutter_firebase_auth/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase Auth',
      theme: ThemeData(
        primaryColor: black_ish,
        primarySwatch: Colors.grey,
      ),
      home: LoginScreen(),
    );
  }
}
