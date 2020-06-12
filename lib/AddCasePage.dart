import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:iSOLVIT/AccueilPage.dart';

class AddCasePage extends StatefulWidget {
  @override
  _AddCasePageState createState() => _AddCasePageState();
}

class _AddCasePageState extends State<AddCasePage> {
  String etat = "";
  TextEditingController controllerNom = new TextEditingController();
  TextEditingController controllerAge = new TextEditingController();
  TextEditingController controllerLieu = new TextEditingController();

  Color btn1 = Colors.white;
  Color btn2 = Colors.white;
  Color btn3 = Colors.white;
  Color txt1 = Colors.grey[500];
  Color txt2 = Colors.grey[500];
  Color txt3 = Colors.grey[500];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
                        height: 14,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: InkWell(
                                child: Icon(
                                  Icons.keyboard_backspace,
                                  size: 30,
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text('Signaler un cas',
                              style: TextStyle(
                                fontSize: 25,
                              )),
                          const Spacer(flex: 2),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.white, spreadRadius: 3),
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 20, left: 40),
                                  child: Text('Nom et prénom',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey[500])),
                                ),
                              ]),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 16, right: 16, top: 5),
                                child: TextField(
                                  controller: controllerNom,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.grey[200]),
                                ),
                              ),
                              Row(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 20, left: 40),
                                  child: Text('Age',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey[500])),
                                ),
                              ]),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 16, right: 16, top: 5),
                                child: TextField(
                                  controller: controllerAge,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.grey[200]),
                                ),
                              ),
                              Row(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 20, left: 40),
                                  child: Text('Lieu de résidence',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey[500])),
                                ),
                              ]),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 16, right: 16, top: 5, bottom: 30),
                                child: TextField(
                                  controller: controllerLieu,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.grey[200]),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 16, bottom: 10),
                        child: Text('Choisissez l\'état du cas',
                            style: TextStyle(
                                fontSize: 16, color: Colors.grey[500])),
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
                                        Icons.sentiment_very_dissatisfied,
                                        color: txt1,
                                      ),
                                      SizedBox(height: 10),
                                      Text("Suspect",
                                          style: TextStyle(
                                              fontSize: 15, color: txt1))
                                    ],
                                  ),
                                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  pressedOpacity: 0.7,
                                  borderRadius: BorderRadius.circular(20),
                                  color: btn1,
                                  onPressed: () {
                                    etat = "Suspect";
                                    setState(
                                      () {
                                        btn1 = Colors.orange[300];
                                        txt1 = Colors.white;
                                        btn2 = btn3 = Colors.white;
                                        txt2 = txt3 = Colors.grey[500];
                                      },
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
                                        color: txt2,
                                      ),
                                      SizedBox(height: 10),
                                      Text("Guéris",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: txt2,
                                          ))
                                    ],
                                  ),
                                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                                  pressedOpacity: 0.7,
                                  borderRadius: BorderRadius.circular(20),
                                  color: btn2,
                                  onPressed: () {
                                    etat = "Guéris";
                                    setState(
                                      () {
                                        btn2 = Colors.green[300];
                                        txt2 = Colors.white;
                                        btn1 = btn3 = Colors.white;
                                        txt1 = txt3 = Colors.grey[500];
                                      },
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
                                        color: txt3,
                                      ),
                                      SizedBox(height: 10),
                                      Text("Décès",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: txt3,
                                          ))
                                    ],
                                  ),
                                  padding: EdgeInsets.fromLTRB(17, 10, 17, 10),
                                  pressedOpacity: 0.7,
                                  borderRadius: BorderRadius.circular(20),
                                  color: btn3,
                                  onPressed: () {
                                    etat = "Décès";
                                    setState(
                                      () {
                                        btn3 = Colors.red[400];
                                        txt3 = Colors.white;
                                        btn1 = btn2 = Colors.white;
                                        txt1 = txt2 = Colors.grey[500];
                                      },
                                    );
                                  }),
                            ),
                          ]),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(90, 10, 90, 20),
                        child: CupertinoButton(
                            child: Text("Enregistrer",
                                style: TextStyle(fontSize: 15)),
                            padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                            pressedOpacity: 0.7,
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue[400],
                            onPressed: () {
                              print("Nom et prénom : " + controllerNom.text);
                              print("Age : " + controllerAge.text);
                              print(
                                  "Lieu de résidence : " + controllerLieu.text);
                              print("Etat : " + etat);
                            }),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
