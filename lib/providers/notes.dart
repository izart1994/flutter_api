import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import '../entities/note.dart';

class NotesProviders with ChangeNotifier {

  Future<List<Note>> fetchNotes() async {
    var url =
        'https://flutter.otaiwebsite.com/flutter_ajar/station_read.php';
    var response = await http.get(url);

    var notes = List<Note>();

    if (response.statusCode == 200) {
      var notesJson = json.decode(response.body);
      for (var noteJson in notesJson) {
        notes.add(Note.fromJson(noteJson));
      }
    }
    return notes;
  }
}
