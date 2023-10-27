import 'dart:math';

import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  @observable
  ObservableList<String> acidNameList = ObservableList<String>.of(['Acetic Acid','Hydrofluoric acid','Hydrocyanic acid','Nitrous acid','Carbonic acid']);

  @observable
  ObservableList<String> acidQList = ObservableList<String>.of(['HAc','HF','HCN','HNO2','H2CO3']);

  @observable
  ObservableList<String> acidKaList = ObservableList<String>.of(['1.8e-5','3.5e-4','4.9e-10','4.3e-4','4.4e-7']);

  @observable
  String acid = "";
  
  @observable
  String concentration = "";

  @observable
  String pH = "";

  @observable
  String solution = "";

  @action
  void calculatePH () {
    if (acid != "" && concentration != "") {
      double ln10 = 2.302585092994046;
      double log10(double x) {
        return log(x) / ln10;
      }

      double H = sqrt(double.parse(acidKaList.elementAt(int.parse(acid))) * double.parse(concentration));
      pH = (-log10(H)).toStringAsFixed(1);
      solutionPH();
    }
  }

  @action
  void solutionPH() {
    double p = double.parse(pH);
    if (p == 7) {
      solution = "Neutral";
    } else if (p < 7) {
      solution = "Acid";
    } else if (p > 7) {
      solution = "Basic";
    } else {
      solution = "Error";
    }
  }
}