import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';

Future<List> readFile(file) async {
  final fileString = await rootBundle.loadString(file);
  final List jsonList = json.decode(fileString);

  print(jsonList.runtimeType);
  print(jsonList.length);

  return jsonList;
}
