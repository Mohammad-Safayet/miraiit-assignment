import 'dart:convert';

import 'package:flutter/services.dart';

class LocalDatasource {
  Future<List> readJson(String filename) async {
    final String response = await rootBundle.loadString('assets/$filename');
    final Map<String, dynamic> data = await json.decode(response);
    
    return data["images"] as List;
  }
}
