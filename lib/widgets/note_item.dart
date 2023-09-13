import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (builder) {
          return EditNoteView(
            note: note,
          );
        }));
      },
      child: Container(
        padding: EdgeInsets.only(top: 16, bottom: 16, left: 12, right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(note.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
                title: Text(
                  note.title,
                  style: TextStyle(fontSize: 26, color: Colors.black),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    note.subTitle,
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNote();
                  },
                  icon:const Icon(
                    Icons.delete,
                    size: 34,
                    color: Colors.black,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Text(
                note.date,
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),
            )
          ],
        ),
      ),
    );
  }
}
