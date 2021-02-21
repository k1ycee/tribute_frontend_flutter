import 'dart:convert';

import 'package:frontend/model/tributes.dart';
import 'package:frontend/utils/strings.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<List<Tributes>> getTributes() async {
    String url = "$BaseUrl/tributes";
    var getTributes = await http.get(url);
    if (getTributes.statusCode == 200){
      Iterable json = jsonDecode(getTributes.body);
      return json.map((e) => Tributes.fromJson(e)).toList();
    }
    return null;
  }

  Future<bool> writeTribute(String name, String body) async {
    String url = "$BaseUrl/tributes";
    Map<String, dynamic> data = {"name": name, "body": body};
    var writeTribute = await http.post(url, body: data);
    if (writeTribute.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }
}
