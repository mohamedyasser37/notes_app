import 'package:flutter/material.dart';
import 'package:notes/views/home_view.dart';
import 'package:notes/widgets/custom_app_bar.dart';
import 'package:notes/widgets/note_list.dart';

class HomeViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          CustomAppBar(
            title: "Notes",
            icon: Icons.search_rounded,
          ),
          Expanded(child: NoteListView()),
        ],
      ),
    );
  }
}


