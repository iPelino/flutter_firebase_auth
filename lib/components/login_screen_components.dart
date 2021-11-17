import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/constants/colors.dart';
import 'package:flutter_firebase_auth/screens/register_screen.dart';

final _formKey = GlobalKey<FormState>();

final TextEditingController emailController = new TextEditingController();
final TextEditingController passwordController = new TextEditingController();

TextFormField emailTextFormField() {
  return TextFormField(
    autofocus: false,
    controller: emailController,
    keyboardType: TextInputType.emailAddress,
    onSaved: (value) {
      emailController.text = value!;
    },
    textInputAction: TextInputAction.next,
    style: TextStyle(
      color: grey_ish,
    ),
    decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.mail,
          color: grey_ish,
          semanticLabel: "Email",
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "username@example.com",
        hintStyle: TextStyle(color: grey_ish),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: grey_ish),
        )),
  );
}

TextFormField passwordTextFormField() {
  return TextFormField(
    autofocus: false,
    obscureText: true,
    controller: passwordController,
    onSaved: (value) {
      emailController.text = value!;
    },
    textInputAction: TextInputAction.done,
    style: TextStyle(
      color: grey_ish,
    ),
    decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.lock,
          color: grey_ish,
          semanticLabel: "Password",
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        hintStyle: TextStyle(color: grey_ish),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: grey_ish),
        )),
  );
}

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

Form loginForm(TextFormField emailField, TextFormField passwordField,
    ElevatedButton loginButton, ElevatedButton registerButton) {
  return Form(
    key: _formKey,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 120,
          child: Image.asset(
            "assets/images/student.png",
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        emailField,
        SizedBox(
          height: 15,
        ),
        passwordField,
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => RegisterScreen(),
                //   ),
                // );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: grey_ish,
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            loginButton,
            registerButton,
          ],
        ),
      ],
    ),
  );
}
