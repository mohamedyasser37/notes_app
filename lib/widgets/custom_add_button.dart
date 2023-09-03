import 'package:flutter/material.dart';

class CustomAddButton extends StatelessWidget {
   CustomAddButton({this.onTap});
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.circular(16)
        ),
        width: MediaQuery.of(context).size.width,
        height: 60,
        child: Center(child: Text("Add",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
      ),
    );
  }
}