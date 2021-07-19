import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Center(
          child: SpinKitDualRing(
            color: Colors.blueAccent,
            size: 50,
          ),
        ),
      ),
    );
  }
}