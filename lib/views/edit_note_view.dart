import 'package:flutter/material.dart';
import 'package:notes/widgets/edit_note_item.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteItem(),
    );
  }
}
