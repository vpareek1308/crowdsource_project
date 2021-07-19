import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../widgets/CarouselWithIndicator.dart';
import '../widgets/NavigationDrawerWidget.dart';

class Home extends StatelessWidget {
  late UserCredential user;

  Home(this.user);

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
            // Image.asset(
            //   'lib/assets/images/quote.jpg',
            //   width: 450,
            // ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text("All Contributions"),
              onPressed: () =>
                  Navigator.pushNamed(context, '/all_contributions'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text("My Contributions"),
              onPressed: () =>
                  Navigator.pushNamed(context, '/my_contributions'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text("User Data"),
              onPressed: () =>
                  print(user),
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
