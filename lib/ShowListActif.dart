import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iSOLVIT/AddCasePage.dart';

import 'AccueilPage.dart';

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
