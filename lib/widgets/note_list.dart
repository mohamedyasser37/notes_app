import 'package:flutter/material.dart';
import 'package:notes/views/home_view.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: NoteItem(),
          );
        },
      ),
    );
  }
}
