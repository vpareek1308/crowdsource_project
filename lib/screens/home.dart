import 'package:flutter/material.dart';
import '../widgets/CarouselWithIndicator.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              onPressed: () => print('settings pressed'),
              icon: Icon(Icons.settings),
            ),
          ],
          actionsIconTheme:
              IconThemeData(size: 40.0, color: Colors.white, opacity: 10.0),
        ),
        body: Column(
          children: [
            CarouselWithIndicator(),
            Image.asset(
              'lib/assets/images/quote.jpg',
              width: 450,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            size: 35,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/image_upload');
          },
        ),
      ),
    );
  }
}
