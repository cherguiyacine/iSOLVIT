import 'dart:math';

import 'package:flutter/material.dart';
import 'package:iSOLVIT/AccueilPage.dart';
import 'package:iSOLVIT/AddCasePage.dart';
import 'package:iSOLVIT/GetStarted.dart';
import 'package:iSOLVIT/LunchPage.dart';
import 'package:iSOLVIT/MenuPage.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';

import 'CasActifPage.dart';
import 'CasGueriePage.dart';
import 'CostumButton.dart';

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
      home: (AccueilPage()),
    ),
  );
}
