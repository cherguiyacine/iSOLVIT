import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iSOLVIT/AccueilPage.dart';
import 'dart:async';

import 'package:iSOLVIT/GetStarted.dart';

class MenuPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MenuPageState();
  }
}

class MenuPageState extends State<MenuPage> {
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[900],
        body: new Stack(
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                image: new AssetImage("images/menu1.PNG"),
                fit: BoxFit.fill,
              )),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 20),
                      child: InkWell(
                        child: ClipRRect(
                          borderRadius: new BorderRadius.circular(10.0),
                          child: Image(
                            // fit: BoxFit.fill,
                            image: AssetImage('images/profil.png'),
                            width: 55.0,
                            height: 55.0,
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 230),
                      child: InkWell(
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 40.0,
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Text(
                    '  Dr.CHERGUI',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 80, left: 20),
                  child: InkWell(
                    child: Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onTap: () {
                      print("Home");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AccueilPage()),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 20),
                  child: InkWell(
                    child: Text(
                      'Les cas',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onTap: () {
                      print("Les cas");
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 20),
                  child: InkWell(
                    child: Text(
                      'Statistique',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onTap: () {
                      print("Statistique");
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 20),
                  child: InkWell(
                    child: Text(
                      'Notifications',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onTap: () {
                      print("Notifications");
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 20),
                  child: InkWell(
                    child: Text(
                      'Paramétres',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onTap: () {
                      print("Paramétres");
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
