import 'dart:math';

import 'package:flutter/material.dart';
import 'package:iSOLVIT/LunchPage.dart';

import 'ShowListActif.dart';

/*void main() => runApp(MaterialApp(
      home: WebViewTuto(),
    ));*/

void main() {
  runApp(
    new MaterialApp(
      title: "iSOLVIT",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: (LunchPage()),
    ),
  );
}
