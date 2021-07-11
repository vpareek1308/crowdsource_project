import 'package:flutter/material.dart';
import 'package:croudsource_project/screens/login.dart';
import 'package:croudsource_project/screens/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/login',
    routes: {
      '/login': (context) => Login(),
      '/home': (context) => Home(),
    },
  ));
}
