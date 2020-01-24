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
            "	Dysplasia is the abnormal development or growth of cells and can be detected through visual inspection of tissue "
                "samples (see Fig. 1). Biopsies can be given a histology score on a 1-8 scale with 1-2 being normal non-dysplasia, "
                "3-4 being low grade dysplasia (LGD), 5-7 being high grade dysplasia (HGD), and 8 being invasive squamous cell "
                "carcinoma (SCC) [4]. Also of significance is the categorization of biopsies based on how they change over time. "
                "If a site is initially identified as having dysplasia and remains at the same level of dysplasia, "
                "it is considered persistent. If a site is identified as dysplastic and regresses to non-dysplasia, it is considered "
                "regressive. Finally, if a site is identified as non-dysplastic and progresses to dysplasia, it is considered "
                "progressive. The persistence or progression of HGD in BECs has been shown by Merrick et al. to significantly "
                "increase the risk of developing invasive SCC [4]. In a second study, the same group compared the gene expression of "
                "persistent and progressive sites of bronchial dysplasia to regressive sites and found that there were 395 differentially "
                "expressed genes between the two groups, many of which are associated with cell-cycle control, inflammation, and cell "
                "adhesion [3]. Of particular note was polo-like kinase 1 (PLK1), which is heavily involved in cell-cycle regulation. "
                "PLK1 inhibitor treatment of BECs exhibiting persistent dysplasia resulted in apoptosis and decreased proliferation, "
                "whereas no such effect was seen in normal or regressive dysplastic cells [3]. A study into oral SCC also found that "
                "PLK1 was significant: Goan et al. found that PLK1 was significantly expressed in tumor tissues and heavily involved "
                "in the proliferation of cancerous cells [6]. Given this information, looking for expression profiles similar to PLK1 "
                "may be a good place to start.",
            style: TextStyle(
              fontSize: 24.0,
            )
          )
        ],
      ),
    );
  }
}

