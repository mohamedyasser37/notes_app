import 'package:flutter/material.dart';

class customAddButton extends StatelessWidget {
  const customAddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.circular(16)
      ),
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: Center(child: Text("Add",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
    );
  }
}