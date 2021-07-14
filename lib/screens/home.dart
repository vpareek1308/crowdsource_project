import 'package:flutter/material.dart';
import '../widgets/CarouselWithIndicator.dart';
import '../widgets/NavigationDrawerWidget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: NavigationDrawerWidget('Sarah', 'sarah@gmail.com',
            'https://images.pexels.com/photos/1181690/pexels-photo-1181690.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
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
