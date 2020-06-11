import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertagselector/fluttertagselector.dart';
import 'package:fluttertagselector/tag_class.dart';

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

  final List<Tags> tagList = [
    Tags("Label 1", Icons.map),
    Tags("Label 2", Icons.headset),
    Tags("Label 3", Icons.info),
    Tags("Label 4", Icons.cake),
    Tags("Label 5", Icons.ac_unit),
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white10,
          body: Container(
            color: Color(0xffEBECF0),
            child: Column(
              children: <Widget>[
                CostumBar(height, width),
                SizedBox(
                  height: 30.0,
                  child: const Card(child: Text('Hello World!')),
                ),
                TagGenrator(tagList: tagList, fillRandomColor: true),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget CostumBar(height, width) {
  return Row(
    children: <Widget>[
      Container(
        height: 75,
        child: Row(
          children: <Widget>[
            Container(
              //   color: Colors.black54,
              height: 75,
              width: width * 0.05,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  //color: Colors.black54,
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
      ),
      Container(height: 100, width: width * 0.4),
      Container(
        //    color: Colors.white,
        height: 100,
        width: width * 0.2,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40)),
            border: Border.all(
                width: 3, color: Colors.white, style: BorderStyle.solid)),
        child: InkWell(
          child: ClipRRect(
            borderRadius: new BorderRadius.circular(10.0),
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage('images/menubar.png'),
            ),
          ),
          onTap: () {
            print('menu');
          },
        ),
      ),
    ],
  );
}
