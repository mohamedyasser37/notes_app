import 'package:flutter/material.dart';

class CustomAddButton extends StatelessWidget {
  CustomAddButton({this.onTap, this.isLoading = false});

  final void Function()? onTap;

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.cyan, borderRadius: BorderRadius.circular(16)),
        width: MediaQuery.of(context).size.width,
        height: 60,
        child: isLoading
            ?const SizedBox(
                width: 26,
                height: 26,
                child: Center(
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                ),
              )
            :const Center(
                child: Text(
                  "Add",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
      ),
    );
  }
}
