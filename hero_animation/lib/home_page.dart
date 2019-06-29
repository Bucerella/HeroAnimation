import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String tag = "home-page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: "hero",
      child: Padding(
        padding: EdgeInsets.all(16),
        child: CircleAvatar(
          radius: 72,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage("assets/alucard.jpg"),
        ),
      ),
    );
    final welcome = Padding(
      padding: EdgeInsets.all(8),
      child: Text(
        "Welcome Alucard",
        style: TextStyle(fontSize: 28, color: Colors.white),
      ),
    );
    final lorem = Padding(
      padding: EdgeInsets.all(8),
      child: Text(
        "Hi Alucard very important. But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?",
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[alucard, welcome, lorem],
        ),
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
