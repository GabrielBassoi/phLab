// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on _HomeStore, Store {
  late final _$acidNameListAtom =
      Atom(name: '_HomeStore.acidNameList', context: context);

  @override
  ObservableList<String> get acidNameList {
    _$acidNameListAtom.reportRead();
    return super.acidNameList;
  }

  @override
  set acidNameList(ObservableList<String> value) {
    _$acidNameListAtom.reportWrite(value, super.acidNameList, () {
      super.acidNameList = value;
    });
  }

  late final _$acidQListAtom =
      Atom(name: '_HomeStore.acidQList', context: context);

  @override
  ObservableList<String> get acidQList {
    _$acidQListAtom.reportRead();
    return super.acidQList;
  }

  @override
  set acidQList(ObservableList<String> value) {
    _$acidQListAtom.reportWrite(value, super.acidQList, () {
      super.acidQList = value;
    });
  }

  late final _$acidKaListAtom =
      Atom(name: '_HomeStore.acidKaList', context: context);

  @override
  ObservableList<String> get acidKaList {
    _$acidKaListAtom.reportRead();
    return super.acidKaList;
  }

  @override
  set acidKaList(ObservableList<String> value) {
    _$acidKaListAtom.reportWrite(value, super.acidKaList, () {
      super.acidKaList = value;
    });
  }

  late final _$acidAtom = Atom(name: '_HomeStore.acid', context: context);

  @override
  String get acid {
    _$acidAtom.reportRead();
    return super.acid;
  }

  @override
  set acid(String value) {
    _$acidAtom.reportWrite(value, super.acid, () {
      super.acid = value;
    });
  }

  late final _$concentrationAtom =
      Atom(name: '_HomeStore.concentration', context: context);

  @override
  String get concentration {
    _$concentrationAtom.reportRead();
    return super.concentration;
  }

  @override
  set concentration(String value) {
    _$concentrationAtom.reportWrite(value, super.concentration, () {
      super.concentration = value;
    });
  }

  late final _$pHAtom = Atom(name: '_HomeStore.pH', context: context);

  @override
  String get pH {
    _$pHAtom.reportRead();
    return super.pH;
  }

  @override
  set pH(String value) {
    _$pHAtom.reportWrite(value, super.pH, () {
      super.pH = value;
    });
  }

  late final _$solutionAtom =
      Atom(name: '_HomeStore.solution', context: context);

  @override
  String get solution {
    _$solutionAtom.reportRead();
    return super.solution;
  }

  @override
  set solution(String value) {
    _$solutionAtom.reportWrite(value, super.solution, () {
      super.solution = value;
    });
  }

  late final _$_HomeStoreActionController =
      ActionController(name: '_HomeStore', context: context);

  @override
  void calculatePH() {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.calculatePH');
    try {
      return super.calculatePH();
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void solutionPH() {
    final _$actionInfo =
        _$_HomeStoreActionController.startAction(name: '_HomeStore.solutionPH');
    try {
      return super.solutionPH();
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
acidNameList: ${acidNameList},
acidQList: ${acidQList},
acidKaList: ${acidKaList},
acid: ${acid},
concentration: ${concentration},
pH: ${pH},
solution: ${solution}
    ''';
  }
}
