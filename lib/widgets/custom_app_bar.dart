import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function()? onPressed;

  CustomAppBar({required this.title, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 30),
          ),
          Spacer(),
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16), color: Colors.white10),
            child: Center(
                child: IconButton(
              icon: Icon(
                icon,
                size: 30,
              ),
              onPressed: onPressed,
            )),
          ),
        ],
      ),
    );
  }
}
