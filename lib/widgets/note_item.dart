import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16, bottom: 16, left: 12, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.amber,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter Tips',
              style: TextStyle(fontSize: 26, color: Colors.black),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                "Build Your Career with Mohamed Yasser",
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),
            ),
            trailing: Icon(
              Icons.delete,
              size: 28,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Text(
              "May, 2023",
              style: TextStyle(fontSize: 18, color: Colors.black54),
            ),
          )
        ],
      ),
    );
  }
}
