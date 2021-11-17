import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/constants/colors.dart';
import 'package:flutter_firebase_auth/screens/register_screen.dart';

ElevatedButton registerElevatedButton(BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RegisterScreen(),
        ),
      );
    },
    child: Text("Create Account"),
    style: ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: BorderSide(color: red_ish),
        ),
      ),
      backgroundColor: MaterialStateProperty.all(red_ish),
      foregroundColor: MaterialStateProperty.all(Colors.white),

      // onPrimary: Colors.white38,
    ),
  );
}

ElevatedButton loginElevatedButton() {
  return ElevatedButton(
    onPressed: () {},
    child: Text("Sign In"),
    style: ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: BorderSide(color: grey_ish),
        ),
      ),
      backgroundColor: MaterialStateProperty.all(grey_ish),
      foregroundColor: MaterialStateProperty.all(black_ish),

      // onPrimary: Colors.white38,
    ),
  );
}
