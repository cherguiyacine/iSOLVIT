import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iSOLVIT/AddCasePage.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'AccueilPage.dart';
import 'SimpleTieSeriesChart.dart';

class CasDecedePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CasDecedePageState();
  }
}

class CasDecedePageState extends State<CasDecedePage> {
  List<charts.Series<Sales, int>> _seriesLineData;
  List<charts.Series<TimeSeriesSales, DateTime>> _createSampleData() {
    final data = [
      new TimeSeriesSales(new DateTime(2020, 06, 19), 2),
      new TimeSeriesSales(new DateTime(2020, 06, 20), 3),
      new TimeSeriesSales(new DateTime(2020, 06, 21), 2),
      new TimeSeriesSales(new DateTime(2020, 06, 22), 5),
      new TimeSeriesSales(new DateTime(2020, 06, 23), 1),
      new TimeSeriesSales(new DateTime(2020, 06, 24), 0),
      new TimeSeriesSales(new DateTime(2020, 06, 25), 3),
      new TimeSeriesSales(new DateTime(2020, 06, 26), 1),
      new TimeSeriesSales(new DateTime(2020, 06, 27), 6),
      new TimeSeriesSales(new DateTime(2020, 06, 28), 9),
    ];

    return [
      new charts.Series<TimeSeriesSales, DateTime>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }

  initState() {
    super.initState();
    _seriesLineData = List<charts.Series<Sales, int>>();
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
                                  'Les cas décédés',
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
                                  'Il y\'a 3 cas décédés',
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
                          '  Les décédés',
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
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            right: 190,
                            bottom: 10,
                          ),
                          child: Text(
                            'Statistiques',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                              color: Colors.white,
                              height: 400,
                              width: width * 0.9,
                              child:
                                  SimpleTimeSeriesChart(_createSampleData())),
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

class Sales {
  int yearval;
  int salesval;
  DateTime time;

  Sales(this.yearval, this.salesval, this.time);
}
