import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MediaQuery.of(context).size.width>800 ? null : Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Image.asset("assets/textOnBottom.png"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About Us"),
              onTap: (){
                Navigator.pushReplacementNamed(context, "/about");
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Contact"),
              onTap: (){
              },
            ),
            ListTile(
              leading: Icon(Icons.photo),
              title: Text("Photos"),
              onTap: (){
                Navigator.pushReplacementNamed(context, "/photos");
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        brightness: Brightness.dark,
        centerTitle: true,
        title: InkWell(
          onTap: (){
            Navigator.pushReplacementNamed(context, "/");
          },
          child: Image.asset(
            "assets/textOnly.png",
            height: 50,
          ),
        ),
        actions: MediaQuery.of(context).size.width>800 ? <Widget>[
          FlatButton(
            child: Text("About Us"),
            onPressed: (){
              Navigator.pushReplacementNamed(context, "/about");
            },
          ),
          FlatButton(
            child: Text("Contact"),
            onPressed: (){
            },
          ),
          FlatButton(
            child: Text("Photos"),
            onPressed: (){
              Navigator.pushReplacementNamed(context, "/photos");
            },
          ),
        ] : null,
      ),
    );
  }
}
