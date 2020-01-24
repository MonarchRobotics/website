import 'package:flutter/material.dart';

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
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Contact"),
            ),
            ListTile(
              leading: Icon(Icons.photo),
              title: Text("Photos"),
            ),
          ],
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
//          leading: MediaQuery.of(context).size.width>800 ? null : IconButton(
//            icon: Icon(Icons.menu,color: Colors.white,),
//            onPressed: (){},
//          ),
          backgroundColor: Colors.black,
          brightness: Brightness.dark,
          centerTitle: true,
          title: Image.asset(
              "assets/textOnly.png",
            height: 50,
          ),
          actions: MediaQuery.of(context).size.width>800 ? <Widget>[
            FlatButton(
              child: Text("About Us"),
              onPressed: (){},
            ),
            FlatButton(
              child: Text("Contact"),
              onPressed: (){},
            ),
            FlatButton(
              child: Text("Photos"),
              onPressed: (){},
            ),
          ] : null,
        ),
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
            "The FitnessGram Pacer Test is a multistage aerobic capacity test that progressively gets more difficult as it continues. The 20 meter pacer test will begin in 30 seconds."
                " Line up at the start. The running speed starts slowly but gets faster each minute after you hear this signal bodeboop. A sing lap should be completed every time you hear"
                " this sound. ding Remember to run in a straight line and run as long as possible. The second time you fail to complete a lap before the sound, your test is over. "
                "The test will begin on the word start. On your mark. Get ready \nSTART \n \n"
                "The FitnessGram Pacer Test is a multistage aerobic capacity test that progressively gets more difficult as it continues. The 20 meter pacer test will begin in 30 seconds."
                " Line up at the start. The running speed starts slowly but gets faster each minute after you hear this signal bodeboop. A sing lap should be completed every time you hear"
                " this sound. ding Remember to run in a straight line and run as long as possible. The second time you fail to complete a lap before the sound, your test is over. "
                "The test will begin on the word start. On your mark. Get ready \nSTART \n \n"
                "The FitnessGram Pacer Test is a multistage aerobic capacity test that progressively gets more difficult as it continues. The 20 meter pacer test will begin in 30 seconds."
                " Line up at the start. The running speed starts slowly but gets faster each minute after you hear this signal bodeboop. A sing lap should be completed every time you hear"
                " this sound. ding Remember to run in a straight line and run as long as possible. The second time you fail to complete a lap before the sound, your test is over. "
                "The test will begin on the word start. On your mark. Get ready \nSTART \n \n",
            style: TextStyle(
              fontSize: 24.0,
            )
          )
        ],
      ),
    );
  }
}

