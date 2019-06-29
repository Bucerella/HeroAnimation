import 'package:flutter/material.dart';
import 'package:hero_animation/home_page.dart';
import 'package:hero_animation/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final routes = <String,WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),

  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kodeversitas",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
