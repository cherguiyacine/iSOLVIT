import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccueilPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AccueilPageState();
  }
}

class AccueilPageState extends State<AccueilPage> {
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
            child: Column(children: <Widget>[
              Container(
                color: Color(0xffEBECF0),
                height: 75,
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 75,
                      width: width * 0.05,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: width * 0.15,
                          child: InkWell(
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(10.0),
                              child: Image(
                                // fit: BoxFit.fill,
                                image: AssetImage('images/profil.png'),
                                width: 20.0,
                                height: 20.0,
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 75,
                      width: width * 0.05,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          height: 35,
                          width: width * 0.15,
                          child: InkWell(
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(10.0),
                              child: Image(
                                fit: BoxFit.scaleDown,
                                image: AssetImage('images/alert.png'),
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
