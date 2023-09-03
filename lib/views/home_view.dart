import 'package:flutter/material.dart';
import 'package:notes/views/home_view.dart';

class HomeViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Row(
              children: [
                Text(
                  'Notes',
                  style: TextStyle(fontSize: 30),
                ),
                Spacer(),
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white10),
                  child: Center(
                      child: Icon(
                    Icons.search,
                    size: 30,
                  )),
                ),
              ],
            ),
          ),
          Expanded(child: NoteListView()),
        ],
      ),
    );
  }
}


