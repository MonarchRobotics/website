import 'package:flutter/material.dart';
import 'package:monarch_robotics_website/about_us.dart';
import 'package:monarch_robotics_website/contact.dart';
import 'package:monarch_robotics_website/photos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  Color gold = Color.fromRGBO(255, 210, 0, 1.0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Monarch Robotics',
      theme: ThemeData(
        primaryColor: Colors.black,
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/": (context)=> HomePage(),
        "/about": (context) => AboutUsPage(),
        "/contact": (context) => ContactPage(),
        "/photos": (context) => PhotosPage(),
      },
//      home: HomePage(),
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
//            Navigator.pushReplacementNamed(context, routeName)(context, "/");
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 0,
        onPressed: (){
          showDialog(
            context: context,
            builder: (BuildContext context){
              return AlertDialog(
                title: Text("You clicked the Secret Surve Button :)"),
                content: Image.asset("assets/ssb.png"),
                actions: <Widget>[
                  FlatButton(
                    child: Text("Close"),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            }
          );
        },
      ),
      body: ListView(
        padding: const EdgeInsets.all(100),
        children: <Widget>[
          Image(
            image: AssetImage(
              "assets/TextOnBottom.png",
            ),
          ),
          Divider(
            height: 100,
          ),
          Text(
            "We are Monarch Robotics of Monarch High School in Louisville, Colorado (Monak Ra&Hik). We are a small team with a cumulative total of 4 brain cells. Do we know what we are doing? Sort of."
            "When in doubt, our philosophy is to not to blame mechanical, or electrical, or even programming. Our rule is to always blame Atharv without any further questions.",
            style: TextStyle(
              fontSize: 24.0,
            )
          )
        ],
      ),
    );
  }
}

