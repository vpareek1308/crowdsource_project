import 'package:croudsource_project/screens/all_contributions.dart';
import 'package:croudsource_project/screens/my_contributions.dart';
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
        drawer: NavigationDrawerWidget(user.user!.displayName.toString(), user.user!.email.toString(),
            user.user!.photoURL.toString(),),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AllContributions(user)))
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text("My Contributions"),
              onPressed: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyContributions(user)))
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text("User Data"),
              onPressed: () =>
                  print(user.user!.displayName),
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
