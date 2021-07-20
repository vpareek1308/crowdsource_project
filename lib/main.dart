import 'package:croudsource_project/screens/loading.dart';
import 'package:croudsource_project/screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:croudsource_project/screens/home.dart';
import 'package:croudsource_project/screens/image_upload.dart';
import 'package:croudsource_project/screens/all_contributions.dart';
import 'package:croudsource_project/screens/my_contributions.dart';
import 'package:croudsource_project/screens/error.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  late UserCredential user;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        // Initialize FlutterFire
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          // Check for errors
          if (snapshot.hasError) {
            return Error();
          }

          // Once complete, show your application
          if (snapshot.connectionState == ConnectionState.done) {
            return App();
          }

          // Otherwise, show something whilst waiting for initialization to complete
          return Loading();
        },
      ),
    );
  }
}

class App extends StatelessWidget {
  late UserCredential user;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => Login(),
        '/home': (context) => Home(user),
        '/image_upload': (context) => ImageUpload(),
        '/all_contributions': (context) => AllContributions(user),
        '/my_contributions' : (context) => MyContributions(user),
      },
    );
  }
}
