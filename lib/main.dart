import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/myhomepage.dart';
import 'providers/notes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: NotesProviders(),
        ),
      ],
      child: MaterialApp(
        title: 'Teach API',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}
