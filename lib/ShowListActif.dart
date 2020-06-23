import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iSOLVIT/AddCasePage.dart';
import 'package:provider/provider.dart';

import 'AccueilPage.dart';
import 'Counter.dart';

class ShowListActifPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ShowListActifPageState();
  }
}

class ShowListActifPageState extends State<ShowListActifPage> {
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final bloc = Provider.of<Counter>(context);

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            body: Container(
          color: Color(0xffEBECF0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    CostumBar(height, width, context),
                    SizedBox(
                      height: 8.0,
                      //child: const Card(child: Text('Hello World!')),
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 0.5 * width,
                          height: 70,
                          child: Column(
                            children: <Widget>[
                              Align(
                                alignment: Alignment(-0.8, -0.5),
                                child: Text(
                                  'Les cas',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    // fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8.0,
                                //child: const Card(child: Text('Hello World!')),
                              ),
                              Align(
                                alignment: Alignment(-0.85, -0.7),
                                child: Text(
                                  'Il y\'a ${bloc.nbPositif} cas actifs',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.5),
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 100),
                          child: Container(
                            //    color: Colors.white,
                            height: width * 0.17,
                            width: width * 0.17,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                    width: 3,
                                    color: Colors.white,
                                    style: BorderStyle.solid)),
                            child: InkWell(
                              child: ClipRRect(
                                borderRadius: new BorderRadius.circular(10.0),
                                child: Icon(
                                  Icons.add,
                                  size: 40,
                                  color: Colors.grey,
                                ),
                              ),
                              onTap: () {
                                print('add');
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AddCasePage()),
                                );
                                /* Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MenuPage()),
            );*/
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    infoWidget(width, "Chergui Yacine", 30),
                    SizedBox(
                      height: 15,
                    ),
                    infoWidget(width, "Islem Moumen", 25),
                    SizedBox(
                      height: 15,
                    ),
                    infoWidget(width, "Chergui Yacine", 30),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

Widget CasCase(cas, Color a) {
  return Padding(
    padding: EdgeInsets.only(top: 4),
    child: CupertinoButton(
        child: Column(
          children: <Widget>[
            Icon(
              Icons.sentiment_very_dissatisfied,
              color: Colors.white,
              size: 15,
            ),
            SizedBox(height: 10),
            Text("$cas", style: TextStyle(fontSize: 10, color: Colors.white))
          ],
        ),
        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
        pressedOpacity: 0.7,
        borderRadius: BorderRadius.circular(35),
        color: a,
        onPressed: () {}),
  );
}

Widget infoWidget(width, name, age) {
  return Center(
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.white, spreadRadius: 3),
        ],
      ),
      height: 310,
      width: width * 0.9,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: new BorderRadius.circular(10.0),
                child: Image(
                  // fit: BoxFit.fill,
                  image: AssetImage('images/profil.png'),
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Container(
                // color: Colors.deepOrange,
                child: Column(
                  children: <Widget>[
                    Text(
                      '   $name',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      '  $age ans              ',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 130),
                child: Icon(
                  Icons.more_vert,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Center(
            child: Text(
              '__________________________',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(right: 220),
            child: Text(
              'Les symptomes',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(
                    Icons.panorama_fish_eye,
                    size: 50,
                    color: Colors.red,
                  ),
                  Text(
                    "Toux",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.panorama_fish_eye,
                    size: 50,
                    color: Colors.green,
                  ),
                  Text(
                    "Fiévre",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          Center(
            child: Text(
              '__________________________',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CasCase("Posisitf", Colors.grey[300]),
              CasCase("Négétif", Colors.grey[300]),
              CasCase("Suspect", Colors.grey[300]),
              CasCase("Guéris", Colors.grey[300]),
              CasCase("Décés", Colors.red[300]),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          CupertinoButton(
              child: Text("Actualiser Etat", style: TextStyle(fontSize: 15)),
              padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
              pressedOpacity: 0.7,
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue[400],
              onPressed: () {})
        ],
      ),
    ),
  );
}
