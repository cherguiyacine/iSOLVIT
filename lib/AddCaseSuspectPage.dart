import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:iSOLVIT/AccueilPage.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';


class AddCaseSuspectPage extends StatefulWidget {
  @override
  _AddCaseSuspectPageState createState() => _AddCaseSuspectPageState();
}

List<Symptome> symptomes = [];

class _AddCaseSuspectPageState extends State<AddCaseSuspectPage> {
  String symptome = "Fièvre";
  String gravite = "";
  int count = 0;
  List<String> s = [];

  Color btn1 = Colors.grey[300];
  Color btn2 = Colors.grey[300];
  Color btn3 = Colors.grey[300];
  Color btn4 = Colors.grey[300];
  Color txt1 = Colors.grey[500];
  Color txt2 = Colors.grey[500];
  Color txt3 = Colors.grey[500];
  Color txt4 = Colors.grey[500];

  @override
  Widget build(BuildContext context) {
    List<Widget> children = new List.generate(count, (int i) => new Symp(i));
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
                        height: 14,
                      ),
                      Row(
                        children: <Widget>[
                          InkWell(
                            child: Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Icon(
                                  Icons.keyboard_backspace,
                                  size: 30,
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          const Spacer(),
                          Text('Signaler un cas',
                              style: TextStyle(
                                fontSize: 25,
                              )),
                          const Spacer(flex: 2),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 6),
                              child: CupertinoButton(
                                  child: Column(
                                    children: <Widget>[
                                      Icon(
                                        Icons.sentiment_neutral,
                                        color: Colors.white,
                                      ),
                                      SizedBox(height: 10),
                                      Text("Suspect",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white))
                                    ],
                                  ),
                                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  pressedOpacity: 1.0,
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.orange[300],
                                  onPressed: () {}),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 6),
                              child: CupertinoButton(
                                  child: Column(
                                    children: <Widget>[
                                      Icon(
                                        Icons.sentiment_satisfied,
                                        color: Colors.grey[500],
                                      ),
                                      SizedBox(height: 10),
                                      Text("Guéris",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey[500],
                                          ))
                                    ],
                                  ),
                                  disabledColor: Colors.white,
                                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                                  borderRadius: BorderRadius.circular(20),
                                  color: btn2,
                                  onPressed: null),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 6),
                              child: CupertinoButton(
                                  child: Column(
                                    children: <Widget>[
                                      Icon(
                                        Icons.sentiment_very_dissatisfied,
                                        color: Colors.grey[500],
                                      ),
                                      SizedBox(height: 10),
                                      Text("Décès",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey[500],
                                          ))
                                    ],
                                  ),
                                  disabledColor: Colors.white,
                                  padding: EdgeInsets.fromLTRB(17, 10, 17, 10),
                                  borderRadius: BorderRadius.circular(20),
                                  color: btn3,
                                  onPressed: null),
                            ),
                          ]),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.white, spreadRadius: 3),
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Text('Ajouter symptome',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey[500])),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: DropdownButton<String>(
                                  value: symptome,
                                  icon: Icon(Icons.keyboard_arrow_down),
                                  iconSize: 24,
                                  elevation: 16,
                                  underline: Container(
                                    height: 1,
                                    color: Colors.grey,
                                  ),
                                  onChanged: (String newValue) {
                                    setState(() {
                                      symptome = newValue;
                                    });
                                  },
                                  items: <String>[
                                    'Fièvre',
                                    'Toux',
                                    'Céphalées',
                                    'Peau altérée',
                                    'Frissons'
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                              Row(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 20, left: 40, bottom: 3),
                                  child: Text('Gravité',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey[500])),
                                ),
                              ]),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(top: 6),
                                      child: CupertinoButton(
                                          child: Column(
                                            children: <Widget>[
                                              Icon(
                                                Icons
                                                    .sentiment_very_dissatisfied,
                                                color: txt1,
                                              ),
                                              SizedBox(height: 10),
                                              Text("Normal",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: txt1))
                                            ],
                                          ),
                                          padding: EdgeInsets.fromLTRB(
                                              15, 10, 15, 10),
                                          pressedOpacity: 0.7,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: btn1,
                                          onPressed: () {
                                            gravite = "Normal";
                                            setState(
                                              () {
                                                btn1 = Colors.green[300];
                                                txt1 = Colors.white;
                                                btn2 = btn3 =
                                                    btn4 = Colors.grey[300];
                                                txt2 = txt3 =
                                                    txt4 = Colors.grey[500];
                                              },
                                            );
                                          }),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 6),
                                      child: CupertinoButton(
                                          child: Column(
                                            children: <Widget>[
                                              Icon(
                                                Icons
                                                    .sentiment_very_dissatisfied,
                                                color: txt2,
                                              ),
                                              SizedBox(height: 10),
                                              Text("Moyen",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: txt2,
                                                  ))
                                            ],
                                          ),
                                          padding: EdgeInsets.fromLTRB(
                                              16, 10, 16, 10),
                                          pressedOpacity: 0.7,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: btn2,
                                          onPressed: () {
                                            gravite = "Moyen";
                                            setState(
                                              () {
                                                btn2 = Colors.orange[300];
                                                txt2 = Colors.white;
                                                btn1 = btn3 =
                                                    btn4 = Colors.grey[300];
                                                txt1 = txt3 =
                                                    txt4 = Colors.grey[500];
                                              },
                                            );
                                          }),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 6),
                                      child: CupertinoButton(
                                          child: Column(
                                            children: <Widget>[
                                              Icon(
                                                Icons
                                                    .sentiment_very_dissatisfied,
                                                color: txt3,
                                              ),
                                              SizedBox(height: 10),
                                              Text("Grave",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: txt3,
                                                  ))
                                            ],
                                          ),
                                          padding: EdgeInsets.fromLTRB(
                                              19, 10, 19, 10),
                                          pressedOpacity: 0.7,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: btn3,
                                          onPressed: () {
                                            gravite = "Grave";
                                            setState(
                                              () {
                                                btn3 = Colors.orange[500];
                                                txt3 = Colors.white;
                                                btn1 = btn2 =
                                                    btn4 = Colors.grey[300];
                                                txt1 = txt2 =
                                                    txt4 = Colors.grey[500];
                                              },
                                            );
                                          }),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 6),
                                      child: CupertinoButton(
                                          child: Column(
                                            children: <Widget>[
                                              Icon(
                                                Icons
                                                    .sentiment_very_dissatisfied,
                                                color: txt4,
                                              ),
                                              SizedBox(height: 10),
                                              Text("Très grave",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: txt4,
                                                  ))
                                            ],
                                          ),
                                          padding:
                                              EdgeInsets.fromLTRB(8, 10, 8, 10),
                                          pressedOpacity: 0.7,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: btn4,
                                          onPressed: () {
                                            gravite = "Très grave";
                                            setState(
                                              () {
                                                btn4 = Colors.red[400];
                                                txt4 = Colors.white;
                                                btn1 = btn2 =
                                                    btn3 = Colors.grey[300];
                                                txt1 = txt2 =
                                                    txt3 = Colors.grey[500];
                                              },
                                            );
                                          }),
                                    ),
                                  ]),
                              SizedBox(
                                height: 10,
                              ),
                              CupertinoButton(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                                  pressedOpacity: 0.7,
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.blue,
                                  onPressed: () {
                                    if (gravite != "") {
                                      if (s.indexOf(symptome) == -1) {
                                        s.add(symptome);
                                        if (gravite == "Normal")
                                          symptomes.add(new Symptome(symptome,
                                              gravite, Colors.green[300]));
                                        if (gravite == "Moyen")
                                          symptomes.add(new Symptome(symptome,
                                              gravite, Colors.orange[300]));
                                        if (gravite == "Très grave")
                                          symptomes.add(new Symptome(symptome,
                                              gravite, Colors.red[400]));
                                        if (gravite == "Grave")
                                          symptomes.add(new Symptome(symptome,
                                              gravite, Colors.orange[500]));
                                        setState(() {
                                          count = count + 1;
                                        });
                                      }
                                    }
                                  }),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.white, spreadRadius: 3),
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 5, bottom: 5, left: 40),
                                  child: Text('Les symptomes',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey[500])),
                                ),
                              ]),
                              Row(
                                children: children,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(90, 10, 90, 20),
                          child: buildTextWithIcon()),
                      /*  Padding(
                        padding: EdgeInsets.fromLTRB(90, 10, 90, 20),
                        child: CupertinoButton(
                            child: Text("Enregistrer",
                                style: TextStyle(fontSize: 15)),
                            padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                            pressedOpacity: 0.7,
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue[400],
                            onPressed: () {
                              print("Symptomes : " + symptomes.toString());
                            }),
                      )*/
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

  void onPressedCustomButton() {
    setState(() {
      switch (stateOnlyText) {
        case ButtonState.idle:
          stateOnlyText = ButtonState.loading;
          break;
        case ButtonState.loading:
          stateOnlyText = ButtonState.fail;
          break;
        case ButtonState.success:
          stateOnlyText = ButtonState.idle;
          break;
        case ButtonState.fail:
          stateOnlyText = ButtonState.success;
          break;
      }
    });
  }

  void onPressedIconWithText() {
    switch (stateTextWithIcon) {
      case ButtonState.idle:
        stateTextWithIcon = ButtonState.loading;

        Future.delayed(Duration(seconds: 1), () {
          setState(() {
            stateTextWithIcon = Random.secure().nextBool()
                ? ButtonState.success
                : ButtonState.fail;
          });
        });

        break;
      case ButtonState.loading:
        break;
      case ButtonState.success:
        stateTextWithIcon = ButtonState.idle;
        break;
      case ButtonState.fail:
        stateTextWithIcon = ButtonState.idle;
        break;
    }
    setState(() {
      stateTextWithIcon = stateTextWithIcon;
    });
  }

  ButtonState stateOnlyText = ButtonState.idle;
  ButtonState stateTextWithIcon = ButtonState.idle;

  Widget buildCustomButton() {
    var progressTextButton = ProgressButton(
      stateWidgets: {
        ButtonState.idle: Text(
          "Idle",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        ButtonState.loading: Text(
          "Loading",
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
        ),
        ButtonState.fail: Text(
          "Fail",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        ButtonState.success: Text(
          "Success",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        )
      },
      stateColors: {
        ButtonState.idle: Colors.blue.shade400,
        ButtonState.loading: Colors.blue.shade300,
        ButtonState.fail: Colors.red.shade300,
        ButtonState.success: Colors.green.shade400,
      },
      onPressed: onPressedCustomButton,
      state: stateOnlyText,
      padding: EdgeInsets.all(8.0),
    );
    return progressTextButton;
  }

  Widget buildTextWithIcon() {
    return ProgressButton.icon(iconedButtons: {
      ButtonState.idle: IconedButton(
          text: "Enregistrer",
          icon: Icon(Icons.send, color: Colors.white),
          color: Colors.blue),
      ButtonState.loading: IconedButton(text: "Loading", color: Colors.blue),
      ButtonState.fail: IconedButton(
          text: "Success",
          icon: Icon(Icons.check_circle, color: Colors.white),
          color: Colors.green.shade400),
      ButtonState.success: IconedButton(
          text: "Success",
          icon: Icon(
            Icons.check_circle,
            color: Colors.white,
          ),
          color: Colors.green.shade400)
    }, onPressed: onPressedIconWithText, state: stateTextWithIcon);
  }
}

class Symptome {
  String symptome;
  String gravite;
  Color couleur;

  Symptome(symptome, gravite, couleur) {
    this.symptome = symptome;
    this.gravite = gravite;
    this.couleur = couleur;
  }
}

class Symp extends StatelessWidget {
  final int index;
  Symp(this.index);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      SizedBox(
        width: 5,
      ),
      Column(
        children: <Widget>[
          Icon(
            Icons.panorama_fish_eye,
            size: 50,
            color: symptomes[index].couleur,
          ),
          Text(
            "${symptomes[index].symptome}",
            style: TextStyle(fontSize: 12),
          ),
        ],
      )
    ]);
  }
}
