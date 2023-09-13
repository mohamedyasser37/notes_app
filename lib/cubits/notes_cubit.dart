import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../models/note_model.dart';
import 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;

  fetchAllNote() {
    var notesBox = Hive.box<NoteModel>("note_box");
    notes = notesBox.values.toList();

    emit(NotesSuccess());
  }
}
