import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';
import 'package:iSOLVIT/LoginPage.dart';

class GetStarted extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GetStartedState();
  }
}

class GetStartedState extends State<GetStarted> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: OverBoard(
        pages: pages,
        showBullets: true,
        finishText: "COMMENCER",
        nextText: "SUIVANT",
        skipText: "RETOUR",
        skipCallback: () {
          _globalKey.currentState.showSnackBar(SnackBar(
            content: Text("Skip clicked"),
          ));
        },
        finishCallback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
      ),
    );
  }

  final pages = [
    PageModel(
        color: const Color(0xfff0DBBD6),
        imageAssetPath: 'images/test2.png',
        title: 'C est parti',
        body: 'Naviguer sur l application avec toute rapidité',
        doAnimateImage: true),
    PageModel(
        color: const Color(0xfff11A0B6),
        imageAssetPath: 'images/test3.png',
        title: 'Ajouter un Cas',
        body: 'Ajouter des cas facilement',
        doAnimateImage: true),
    PageModel(
        color: const Color(0xfff157DE6),
        imageAssetPath: 'images/tets.png',
        title: 'Visualiser',
        body: 'Avoir des informations avec une visibilité parfaite',
        doAnimateImage: true),
  ];
}
