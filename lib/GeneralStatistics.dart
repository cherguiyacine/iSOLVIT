import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:iSOLVIT/GetStarted.dart';

import 'AccueilPage.dart';

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
                  ],
                ),
              ),
              Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 0.5 * width,
                    height: 70,
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment(-0.8, -0.5),
                          child: Text(
                            'Accueil',
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
                            'Il y\'a 49 cas',
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
                  Container(
                    width: 0.5 * width,
                    color: Colors.blueGrey,
                    height: 70,
                    //child:TagGenrator(tagList: tagList, fillRandomColor: false),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 6),
                child: CupertinoButton(
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.sentiment_very_dissatisfied,
                          //  color: txt3,
                        ),
                        SizedBox(height: 10),
                        Text("Décès",
                            style: TextStyle(
                              fontSize: 15,
                              //   color: txt3,
                            ))
                      ],
                    ),
                    padding: EdgeInsets.fromLTRB(17, 10, 17, 10),
                    pressedOpacity: 0.7,
                    borderRadius: BorderRadius.circular(20),
                    //  color: btn3,
                    onPressed: () {}),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
