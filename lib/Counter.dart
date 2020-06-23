import 'dart:developer';

import 'package:flutter/cupertino.dart';

class Counter with ChangeNotifier {
  Counter(this.nbGueris, this.nbPositif, this.nbSuspect, this.nbDeces);
  int nbGueris = 0;
  int nbSuspect = 0;
  int nbPositif = 0;
  int nbDeces = 0;
  incGuiris() {
    this.nbGueris++;
    notifyListeners();
  }

  incSuspect() {
    this.nbSuspect++;
    notifyListeners();
  }

  incPositif() {
    this.nbPositif++;
    notifyListeners();
  }

  incDeces() {
    this.nbDeces++;
    notifyListeners();
  }

  int getSomme() {
    return this.nbGueris + this.nbPositif + this.nbSuspect + this.nbDeces;
  }
}
