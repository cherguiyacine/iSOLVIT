import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iSOLVIT/AddCasePage.dart';
import 'package:iSOLVIT/CasDecede.dart';
import 'dart:async';

import 'package:iSOLVIT/GetStarted.dart';

import 'AccueilPage.dart';
import 'CasGueriePage.dart';
import 'ChartWidget2.dart';

class GeneralStatisticsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GeneralStatisticsPageState();
  }
}

class GeneralStatisticsPageState extends State<GeneralStatisticsPage> {
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // TODO: implement build
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
                                  'Il y\'a 79 cas',
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
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: CupertinoButton(
                              child: Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.sentiment_dissatisfied,
                                    color: Colors.yellow[900],
                                  ),
                                  SizedBox(height: 10),
                                  Text("Actif ",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                      ))
                                ],
                              ),
                              padding: EdgeInsets.fromLTRB(17, 10, 17, 10),
                              pressedOpacity: 0.7,
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              onPressed: () {}),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: CupertinoButton(
                              child: Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.sentiment_satisfied,
                                    color: Colors.green[400],
                                  ),
                                  SizedBox(height: 10),
                                  Text("Guéris",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                      ))
                                ],
                              ),
                              padding: EdgeInsets.fromLTRB(17, 10, 17, 10),
                              pressedOpacity: 0.7,
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CasGuerisPage()),
                                );
                              }),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: CupertinoButton(
                              child: Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.sentiment_very_dissatisfied,
                                    color: Colors.red,
                                  ),
                                  SizedBox(height: 10),
                                  Text("Décès",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                      ))
                                ],
                              ),
                              padding: EdgeInsets.fromLTRB(17, 10, 17, 10),
                              pressedOpacity: 0.7,
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CasDecedePage()),
                                );
                              }),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Stack(
                      children: <Widget>[
                        Center(
                          child: Container(
                            //  color: Colors.blue,
                            height: 600,
                            width: width * 0.9,
                            child: PieChartSample2(),
                          ),
                        ),
                        Positioned(
                          left: 150.0,
                          top: 180.0,
                          child: Text(
                            '79 cas',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
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
