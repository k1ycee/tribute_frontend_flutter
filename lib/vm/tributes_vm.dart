import 'package:flutter/material.dart';
import 'package:frontend/api/tributes_api_calls.dart';
import 'package:frontend/model/tributes.dart';

class TributesViewModel extends ChangeNotifier {
  Api api = Api();

  bool _busy = false;
  bool get busy => _busy;

  bool _success = false;
  bool get success => _success;

  void setBusy(bool value) {
    _busy = value;
    notifyListeners();
  }

  List<Tributes> tributes = [];
  Future<void> getTributes() async {
    setBusy(true);
    var getTributes = await api.getTributes();
    this.tributes = getTributes;
    notifyListeners();
    setBusy(false);
  }

  Future<void> writeTribute(String name, String body) async {
    setBusy(true);
    var writeTribute = await api.writeTribute(name, body);
    print(writeTribute);
    if (writeTribute) {
      _success = writeTribute;
    } else {
      _success = writeTribute;
    }
    setBusy(false);
    notifyListeners();
  }
}
