import 'package:flutter/foundation.dart';

class Note with ChangeNotifier {
  final String id;
  final String city;
  final String state;

  Note({
    this.id,
    this.city,
    this.state,
  });

  factory Note.fromJson(Map<String, dynamic> json) {
    return Note(
      id: json["ID"] as String,
      city: json["CITY"] as String,
      state: json["STATE"] as String,
    );
  }
}