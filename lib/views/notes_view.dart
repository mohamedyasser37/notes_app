import 'package:flutter/material.dart';
import 'package:notes/views/home_view.dart';
import 'package:notes/widgets/add_note_bottom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            context: context,
            builder: (context) {
              return ShowBottomSheet1();
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body: HomeViewBody(),
    );
  }
}
