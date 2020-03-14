import 'package:flutter/material.dart';

class AboutUsPage extends StatefulWidget {
  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
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
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Contact"),
              onTap: (){
                Navigator.pushReplacementNamed(context, "/contact");
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
            },
          ),
          FlatButton(
            child: Text("Contact"),
            onPressed: (){
              Navigator.pushReplacementNamed(context, "/contact");
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
