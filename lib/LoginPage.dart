import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:page_transition/page_transition.dart';

import 'AccueilPage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String centre = "Centre A";
  bool resterConnecte = true;
  TextEditingController controllerID = new TextEditingController();
  TextEditingController controllerPW = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return MaterialApp(
            home: Card(
          color: Colors.grey[200],
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 36, 20, 60),
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
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: Text('Login', style: TextStyle(fontSize: 30)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                        height: 3,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(30))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text('Centre de travail',
                        style:
                            TextStyle(fontSize: 14, color: Colors.grey[500])),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: DropdownButton<String>(
                      value: centre,
                      icon: Icon(Icons.keyboard_arrow_down),
                      iconSize: 24,
                      elevation: 16,
                      underline: Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                      onChanged: (String newValue) {
                        setState(() {
                          centre = newValue;
                        });
                      },
                      items: <String>[
                        'Centre A',
                        'Centre B',
                        'Centre C',
                        'Centre D'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  Row(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 40),
                      child: Text('Identifiant',
                          style:
                              TextStyle(fontSize: 14, color: Colors.grey[500])),
                    ),
                  ]),
                  Padding(
                    padding: EdgeInsets.only(left: 16, right: 16, top: 5),
                    child: TextField(
                      controller: controllerID,
                      decoration: InputDecoration(
                          filled: true, fillColor: Colors.grey[200]),
                    ),
                  ),
                  Row(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 40),
                      child: Text('Mot de passe',
                          style:
                              TextStyle(fontSize: 14, color: Colors.grey[500])),
                    ),
                  ]),
                  Padding(
                    padding: EdgeInsets.only(left: 16, right: 16, top: 5),
                    child: TextField(
                      controller: controllerPW,
                      obscureText: true,
                      decoration: InputDecoration(
                          filled: true, fillColor: Colors.grey[200]),
                    ),
                  ),
                  Row(children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(top: 0, left: 25),
                        child: FlatButton(
                            onPressed: () {
                              return;
                            },
                            child: Text(
                              "Mot de passe oublié ?",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.grey[500]),
                            ))),
                  ]),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 0, left: 40),
                        child: Text('Rester Connecté',
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey[500])),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 0),
                        child: Transform.scale(
                          scale: 0.7,
                          child: CupertinoSwitch(
                            value: resterConnecte,
                            activeColor: Colors.blue[400],
                            trackColor: Colors.grey[300],
                            onChanged: (value) {
                              setState(() {
                                resterConnecte = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: CupertinoButton(
                        child: Text("Login", style: TextStyle(fontSize: 15)),
                        padding: EdgeInsets.fromLTRB(80, 10, 80, 10),
                        pressedOpacity: 0.7,
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue[400],
                        onPressed: () {
                          print("ID : " + controllerID.text);
                          print("Mot de passe : " + controllerPW.text);
                          print("Centre de travail : " + centre);
                          print(
                              "Rester connecté : " + resterConnecte.toString());
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AccueilPage()),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ));
      },
    );
  }
}
