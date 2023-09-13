import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/cubits/add_notes_cubit.dart';
import 'package:notes/cubits/notes_cubit.dart';
import 'package:notes/cubits/notes_state.dart';
import 'package:notes/main.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/notes_view.dart';
import 'package:notes/views/home_view.dart';
import 'package:notes/views/simple_bloc_observer.dart';
import 'package:notes/widgets/add_note_bottom_sheet.dart';

void main() async{

  Bloc.observer=SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>("note_box");
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins'
        ),
        home:NotesView()
      ),
    );
  }
}



