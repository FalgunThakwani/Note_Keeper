import "package:flutter/material.dart";
import 'package:note_keeper/screens/note_list.dart';
import 'package:note_keeper/screens/note_detail.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "NoteKeeper App",
      home: note_list(),
      theme: ThemeData(primaryColor: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
    );
  }
}
