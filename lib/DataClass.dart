/*import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';

class DataClass {
  DataClass(nbSuspect, nbPositif, nbGueris, nbDeces) {
    this.nbSuspect = nbSuspect;
    this.nbPositif = nbPositif;
    this.nbGueris = nbGueris;
    this.nbDeces = nbDeces;
    getnbSuspect();
  }
  int nbSuspect;
  int nbPositif;
  int nbGueris;
  int nbDeces;
  int getSum() {
    return nbDeces + nbGueris + nbPositif + nbSuspect;
  }

  final FirebaseDatabase database = FirebaseDatabase.instance;

  void testiha() {
    try {
      database.reference().child("DataInformation").set({
        "nbSuspect": this.nbSuspect,
        "nbPositif": this.nbPositif,
        "nbGueris": this.nbGueris,
        "nbDeces": this.nbDeces
      });
    } catch (e) {
      print(e.toString());
    }
  }

  int getnbSuspect() {
    database
        .reference()
        .child("DataInformation")
        .once()
        .then((DataSnapshot snapshot) {
      Map<dynamic, dynamic> data = snapshot.value;
      print(data.values);
    });
  }
}
*/
