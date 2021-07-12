import 'package:flutter/material.dart';

class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Container(
          color: Colors.blue[10],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter Valid Email Id',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter Password',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/home'),
                child: Text('Login'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
