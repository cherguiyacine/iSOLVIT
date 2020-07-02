import 'package:flutter/material.dart';
import 'package:iSOLVIT/AccueilPage.dart';
import 'package:iSOLVIT/LunchPage.dart';
import 'package:provider/provider.dart';

import 'Counter.dart';

/*void main() => runApp(MaterialApp(
      home: WebViewTuto(),
    ));*/
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (_) => Counter(12, 13, 18, 79)),
      ],
      child: new MaterialApp(
        title: "iSOLVIT",
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: (LunchPage()),
      ),
    ),
  );
}
