import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? value) {
    _date = value;
  }

  List<String> _filtroCategoria = [];
  List<String> get filtroCategoria => _filtroCategoria;
  set filtroCategoria(List<String> value) {
    _filtroCategoria = value;
  }

  void addToFiltroCategoria(String value) {
    filtroCategoria.add(value);
  }

  void removeFromFiltroCategoria(String value) {
    filtroCategoria.remove(value);
  }

  void removeAtIndexFromFiltroCategoria(int index) {
    filtroCategoria.removeAt(index);
  }

  void updateFiltroCategoriaAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    filtroCategoria[index] = updateFn(_filtroCategoria[index]);
  }

  void insertAtIndexInFiltroCategoria(int index, String value) {
    filtroCategoria.insert(index, value);
  }

  String _filtroCidade = '';
  String get filtroCidade => _filtroCidade;
  set filtroCidade(String value) {
    _filtroCidade = value;
  }
}
