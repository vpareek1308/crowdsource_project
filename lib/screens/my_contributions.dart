import 'package:croudsource_project/widgets/ContributionPostBaseWidget.dart';
import 'package:flutter/material.dart';

class MyContributions extends StatelessWidget {

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


