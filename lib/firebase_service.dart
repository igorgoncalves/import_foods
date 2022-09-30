import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

Future create(data) async {
  final db = FirebaseFirestore.instance;
  final collection = db.collection("Alimentos");
  await collection.add(data);
  log(data["description"]);
}
