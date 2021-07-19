import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../authentication.dart';
import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late UserCredential user;

  @override
  void initState() {
    super.initState();
    signOut();
  }

  void click() {
    signInWithGoogle().then((user) => {
      this.user = user,
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => Home(user)))
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: ElevatedButton(
              onPressed: this.click,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'lib/assets/images/google_logo.png',
                    width: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sign in with Google",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
