import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iSOLVIT/AddCasePage.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:iSOLVIT/ShowListActif.dart';
import 'package:provider/provider.dart';

import 'AccueilPage.dart';
import 'Counter.dart';
import 'TwoLinePage.dart';

class CasActifPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CasActifPageState();
  }
}

class CasActifPageState extends State<CasActifPage> {
  List<charts.Series<TimeSeriesSales, int>> _seriesLineData;

  static List<charts.Series<TimeSeriesSales, DateTime>> _createSampleData(
      bloc) {
    final desktopSalesData = [
      new TimeSeriesSales(new DateTime(2020, 9, 19), 5),
      new TimeSeriesSales(new DateTime(2020, 9, 26), 9),
      new TimeSeriesSales(new DateTime(2020, 10, 3), 14),
      new TimeSeriesSales(new DateTime(2020, 10, 10), 16),
      new TimeSeriesSales(new DateTime(2020, 10, 11), bloc.nbSuspect),
    ];

    final tableSalesData = [
      new TimeSeriesSales(new DateTime(2020, 9, 19), 3),
      new TimeSeriesSales(new DateTime(2020, 9, 26), 1),
      new TimeSeriesSales(new DateTime(2020, 10, 3), 5),
      new TimeSeriesSales(new DateTime(2020, 10, 10), 19),
      new TimeSeriesSales(new DateTime(2020, 10, 11), bloc.nbPositif),
    ];

    final mobileSalesData = [
      new TimeSeriesSales(new DateTime(2020, 9, 19), 3),
      new TimeSeriesSales(new DateTime(2020, 9, 26), 1),
      new TimeSeriesSales(new DateTime(2020, 10, 3), 5),
      new TimeSeriesSales(new DateTime(2020, 10, 10), 19),
      new TimeSeriesSales(new DateTime(2020, 10, 11), bloc.nbPositif),
    ];

    return [
      new charts.Series<TimeSeriesSales, DateTime>(
        id: 'Desktop',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: desktopSalesData,
      ),
      new charts.Series<TimeSeriesSales, DateTime>(
        id: 'Tablet',
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: tableSalesData,
      ),
      new charts.Series<TimeSeriesSales, DateTime>(
          id: 'Mobile',
          colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
          domainFn: (TimeSeriesSales sales, _) => sales.time,
          measureFn: (TimeSeriesSales sales, _) => sales.sales,
          data: mobileSalesData)
        // Configure our custom point renderer for this series.
        ..setAttribute(charts.rendererIdKey, 'customPoint'),
    ];
  }

  initState() {
    super.initState();
    _seriesLineData = List<charts.Series<TimeSeriesSales, int>>();
  }

  int _current = 0;
  List<String> imgList = [
    "images/1012.png",
    "images/1216.png",
    "images/512.png",
    "images/1012.png",
    "images/1216.png",
    "images/512.png",
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final bloc = Provider.of<Counter>(context);

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
                          height: 90,
                          child: Column(
                            children: <Widget>[
                              Align(
                                alignment: Alignment(-0.8, -0.5),
                                child: Text(
                                  'Les cas Actif',
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
                              Padding(
                                padding: EdgeInsets.only(left: 2),
                                child: Text(
                                  'Il y\'a ${bloc.nbSuspect} cas suspects et ${bloc.nbPositif} cas actifs',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.5),
                                    fontSize: 15,
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
                          '  Actifs',
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ShowListActifPage()),
                            );
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ShowListActifPage()),
                              );
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
                              child: DateTimeComboLinePointChart(
                                  _createSampleData(bloc))),
                        ),
                        Center(
                          child: Container(
                            color: Colors.white,
                            height: 100,
                            width: width * 0.9,
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 25,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          border: Border.all(
                                              width: 3,
                                              color: Colors.blue,
                                              style: BorderStyle.solid)),
                                      child: ClipRRect(
                                        borderRadius:
                                            new BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Cas suspects',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 25,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          border: Border.all(
                                              width: 3,
                                              color: Colors.red,
                                              style: BorderStyle.solid)),
                                      child: ClipRRect(
                                        borderRadius:
                                            new BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Cas positifs',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
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

class TimeSeriesSales {
  final DateTime time;
  final int sales;

  TimeSeriesSales(this.time, this.sales);
}
