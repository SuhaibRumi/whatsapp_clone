import 'package:flutter/services.dart';

import 'dart:convert';

class JsonService {
  loadData(String filePath) async {
    try {
      var dataJson = await rootBundle.loadString(filePath);
      var decodeData = json.decode(dataJson);
      return decodeData;
    } catch (e) {
      // print(e);
    }
  }
}
