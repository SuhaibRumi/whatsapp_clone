import 'dart:convert';
import 'package:flutter/services.dart';

class JsonService {
  loadData(String path) async {
    try {
      var dataJson = rootBundle.loadString(path);
      var decodeData = json.decode(await dataJson);
      return (decodeData);
    } catch (e) {
      // print(e);
    }
  }
}
