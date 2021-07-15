import 'package:flutter/material.dart';

class ContributionPostBaseWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Name",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset(
            'lib/assets/images/photo1.jpg',
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
