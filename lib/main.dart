import 'package:flutter/material.dart';
import 'package:croudsource_project/screens/login.dart';
import 'package:croudsource_project/screens/home.dart';
import 'package:croudsource_project/screens/image_upload.dart';
import 'package:croudsource_project/screens/all_contributions.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/login',
    routes: {
      '/login': (context) => Login(),
      '/home': (context) => Home(),
      '/image_upload': (context) => ImageUpload(),
      '/all_contributions': (context) => AllContributions(),
    },
  ));
}
