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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Image.asset(name),
            )
          ],
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          leading: MediaQuery.of(context).size.width>800 ? null : IconButton(
            icon: Icon(Icons.menu,color: Colors.white,),
            onPressed: (){},
          ),
          backgroundColor: Colors.black,
          brightness: Brightness.dark,
          centerTitle: true,
          title: Image.asset(
              "assets/textOnly.png",
            height: 50,
          ),
          actions: MediaQuery.of(context).size.width>800 ? <Widget>[
            FlatButton(
              child: Text("Contact"),
              onPressed: (){},
            ),
            FlatButton(
              child: Text("Photos"),
              onPressed: (){},
            ),
            FlatButton(
              child: Text("About Us"),
              onPressed: (){},
            ),
          ] : null,
//        actions: <Widget>[
//          FlatButton(
//            child: Text("Contact"),
//            onPressed: (){},
//          )
//        ],
        ),
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
          ),
        ],
      ),
    );
  }
}

