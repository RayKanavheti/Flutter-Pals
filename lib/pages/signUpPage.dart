import 'package:flutter/material.dart';
import 'package:hack19/pages/loginPage.dart';

class SignUpPage extends StatefulWidget {
  _SignUpPageState createState() => new _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: registerBody(),
    );
  }

  registerBody() => SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[registerHeader(), registerFields()],
        ),
      );

  registerHeader() => Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FlutterLogo(
            colors: Colors.red,
            size: 80.0,
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            "Flutter Pals",
            style: TextStyle(fontWeight: FontWeight.w700, color: Colors.red),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            "Sign up to continue",
            style: TextStyle(color: Colors.grey),
          ),
        ],
      );
  registerFields() => Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
              child: TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  labelText: "Username",
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
              child: TextField(
                maxLines: 1,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter your password",
                  labelText: "Password",
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
              child: TextField(
                maxLines: 1,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Confirm your password",
                  labelText: "Confirm your password",
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
              width: double.infinity,
              child: RaisedButton(
                padding: EdgeInsets.all(12.0),
                shape: StadiumBorder(),
                child: Text(
                  "REGISTER",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
                onPressed: () {
                  // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => S()), (Route<dynamic> route) => false);
                },
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            FlatButton(
              child: Text('LOGIN'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
                // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpPage()));
              },
            ),
          ],
        ),
      );
}
