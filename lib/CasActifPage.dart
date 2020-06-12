import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iSOLVIT/AddCasePage.dart';
import 'dart:async';

import 'package:iSOLVIT/GetStarted.dart';

import 'AccueilPage.dart';
import 'ChartWidget2.dart';

class CasActifPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CasActifPageState();
  }
}

class CasActifPageState extends State<CasActifPage> {
  initState() {
    super.initState();
  }

  int _current = 0;
  List<String> imgList = [
    "images/malade1.png",
    "images/malade1.png",
    "images/malade1.png",
    "images/malade1.png",
    "images/malade1.png",
    "images/malade1.png",
  ];
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
                                  'Les cas guéris',
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
                                  'Il y\'a 20 cas',
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '  Les cas',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        InkWell(
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Voir plus >  ',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            print("Voir plus");
                          },
                        ),
                      ],
                    ),
                    Container(
                      height: 250.0,
                      // color: Colors.black,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        // padding: const EdgeInsets.all(10),
                        itemBuilder: (context, index) {
                          return InkWell(
                            child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                imgList[index],
                              ),
                              width: 150.0,
                              height: 230.0,
                            ),
                            onTap: () {
                              setState(() {
                                _current = index;
                              });
                              print(index);
                            },
                          );
                        },
                        itemCount: imgList.length,
                      ),
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
