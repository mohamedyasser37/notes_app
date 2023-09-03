import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/main.dart';
import 'package:notes/notes_view.dart';
import 'package:notes/views/home_view.dart';
import 'package:notes/widgets/bottom_sheet.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox('note_box');
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins'
      ),
      home:NotesView()
    );
  }
}



