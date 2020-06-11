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

  int _current = 0;
  List<String> imgList = [
    "images/malade1.png",
    "images/malade1.png",
    "images/malade1.png",
    "images/malade1.png",
    "images/malade1.png",
    "images/malade1.png",
  ];
  final List<Tags> tagList = [
    Tags("Signaler Cas", Icons.add),
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          // backgroundColor: Colors.white,
          body: Container(
            color: Color(0xffEBECF0),
            child: Column(
              children: <Widget>[
                CostumBar(height, width),
                SizedBox(
                  height: 40.0,
                  //child: const Card(child: Text('Hello World!')),
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
                      child:
                          TagGenrator(tagList: tagList, fillRandomColor: true),
                    ),
                  ],
                ),
                Container(
                  child: Align(
                    child: Container(
                      color: Colors.white,
                      height: 90,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            width: 5.0,
                            //child: const Card(child: Text('Hello World!')),
                          ),
                          InkWell(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 60,
                                  child: Image(
                                    // fit: BoxFit.fill,
                                    image: AssetImage('images/message1.PNG'),
                                    width: 70.0,
                                    height: 70.0,
                                  ),
                                ),
                                Text(
                                  'Les cas',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {
                              print("Les cas");
                            },
                          ),
                          InkWell(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 60,
                                  child: Image(
                                    // fit: BoxFit.fill,
                                    image:
                                        AssetImage('images/statistique1.PNG'),
                                    width: 70.0,
                                    height: 70.0,
                                  ),
                                ),
                                Text(
                                  'Statistiques',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {
                              print('Statistiques');
                            },
                          ),
                          InkWell(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 60,
                                  child: Image(
                                    // fit: BoxFit.fill,
                                    image: AssetImage('images/setting1.PNG'),
                                    width: 70.0,
                                    height: 70.0,
                                  ),
                                ),
                                Text(
                                  'Paramétres',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {
                              print("Paramétres");
                            },
                          ),
                          InkWell(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 60,
                                  child: Image(
                                    // fit: BoxFit.fill,
                                    image: AssetImage('images/alert1.PNG'),
                                    width: 70.0,
                                    height: 70.0,
                                  ),
                                ),
                                Text(
                                  'Notifications',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    // fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {
                              print("Notifications");
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                            //child: const Card(child: Text('Hello World!')),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      SizedBox(
                        height: 20.0,
                        //child: const Card(child: Text('Hello World!')),
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
                      Center(
                        child: Container(
                          color: Colors.blue,
                          height: 100,
                          width: 100,
                        ),
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
