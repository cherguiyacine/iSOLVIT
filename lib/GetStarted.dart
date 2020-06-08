import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GetStartedState();
  }
}

class GetStartedState extends State<GetStarted> {
//  MapState(this.initx, this.inity);
  initState() {
    super.initState();
  }

  //Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(body: Container()),
      ),
    );
  }
}
