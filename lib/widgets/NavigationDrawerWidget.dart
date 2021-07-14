import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = 20.0;
  String name = '';
  String email = '';
  String imgURL = '';
  NavigationDrawerWidget(
    String name,
    String email,
    String imgURL,
  ) {
    this.name = name;
    this.email = email;
    this.imgURL = imgURL;
  }
  // const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.blue,
        child: ListView(
          // padding: EdgeInsets.symmetric(horizontal: padding),
          children: <Widget>[
            buildHeader(imgURL: imgURL, name: name, email: email),
            Container(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  buildMenuItem(
                    text: 'Community',
                    icon: Icons.people,
                    onClicked: () => navigate(context, 'Community'),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  buildMenuItem(
                    text: 'Explore',
                    icon: Icons.compare_arrows_sharp,
                    onClicked: () => navigate(context, 'Explore'),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  buildMenuItem(
                    text: 'New Observation',
                    icon: Icons.add,
                    onClicked: () => navigate(context, 'New Observation'),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  // const SizedBox(
                  //   height: 24,
                  // ),
                  buildMenuItem(
                    text: 'Help',
                    icon: Icons.help,
                    onClicked: () => navigate(context, 'Help'),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  buildMenuItem(
                    text: 'Settings',
                    icon: Icons.settings,
                    onClicked: () => navigate(context, 'Settings'),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  buildMenuItem(
                    text: 'About',
                    icon: Icons.text_fields,
                    onClicked: () => navigate(context, 'About'),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  buildMenuItem(
                    text: 'Sign out',
                    icon: Icons.phonelink_erase,
                    onClicked: () => navigate(context, 'Sign out'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      onTap: onClicked,
    );
  }

  Widget buildHeader(
          {required String imgURL,
          required String name,
          required String email}) =>
      InkWell(
        child: Container(
          padding: EdgeInsets.only(
              left: padding / 2, right: padding / 2, top: padding),
          child: Row(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(imgURL),
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    email,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      );

  void navigate(BuildContext context, String navigateTo) {
    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => ));
    // TODO : implement navigate
  }
}
