import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Monarch Robotics',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(255, 210, 0, 1.0),
        brightness: Brightness.dark,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Monarch Robotics"),
      ),
      body: ListView(
        children: <Widget>[
          Text(
              "1245",
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
          Image(
            image: AssetImage(
              "assets/Final Logo.png"
            ),
          )
        ],
      ),
    );
  }
}

