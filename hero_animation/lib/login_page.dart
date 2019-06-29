import 'package:flutter/material.dart';
import 'package:hero_animation/home_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 40.0,
        child: Image.asset('assets/logo.png'),
      ),
    );
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'bucerella@gmail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: 'some password',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    );
    final loginBtn = Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Material(
        borderRadius: BorderRadius.circular(30),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5,
        child: MaterialButton(
          minWidth: 200,
          height: 42,
          onPressed: () {
            Navigator.of(context).pushNamed(HomePage.tag);
          },
          color: Colors.lightBlueAccent,
          child: Text(
            'Log In',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
    final forgotLabel = FlatButton(
      child: Text(
        'Forgot Password?',
        style: TextStyle(color: Colors.black),
      ),
      onPressed: (){},
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24,right: 24),
          children: <Widget>[
            logo,
            SizedBox(height: 48,),
            email,
            SizedBox(height: 8,),
            password,
            SizedBox(height: 24,),
            loginBtn,
            forgotLabel,
          ],
        ),
      ),
    );

  }
}
