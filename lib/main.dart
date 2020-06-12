import 'package:flutter/material.dart';
import 'package:iSOLVIT/AccueilPage.dart';
import 'package:iSOLVIT/GetStarted.dart';
import 'package:iSOLVIT/MenuPage.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'CasActifPage.dart';
import 'CasGueriePage.dart';

/*void main() => runApp(MaterialApp(
      home: WebViewTuto(),
    ));*/

void main() {
  runApp(
    new MaterialApp(
      title: "iSOLVIT",
      home: (CasActifPage()),
    ),
  );
}
