import 'dart:convert';

import 'package:flutter/services.dart';

/// A class responsible for reading and processing local JSON data.
class LocalDatasource {
  /// Reads and decodes a JSON file from the assets folder.
  ///
  /// The [filename] parameter specifies the name of the JSON file to be read
  /// from the assets folder. The method loads the file as a string and decodes
  /// it using the JSON decoding mechanism. It returns a list containing the
  /// data extracted from the "images" field of the JSON.
  ///
  Future<List> readJson(String filename) async {
    final String response = await rootBundle.loadString('assets/$filename');
    final Map<String, dynamic> data = await json.decode(response);
    
    return data["images"] as List;
  }
}
