import 'package:croudsource_project/widgets/ContributionPostBaseWidget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyContributions extends StatelessWidget {
  late UserCredential user;

  MyContributions(this.user);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("All Contributions"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ContributionPostBaseWidget(),
              ContributionPostBaseWidget(),
              ContributionPostBaseWidget(),
            ],
          ),
        ),
      ),
    );
  }
}


