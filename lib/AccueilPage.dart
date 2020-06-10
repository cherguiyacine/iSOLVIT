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
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            color: Color(0xfff0DBBD6),
          ),
        ),
      ),
    );
  }
}
