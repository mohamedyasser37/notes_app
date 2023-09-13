import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;

  customTextField(
      {required this.hint,
      required this.maxLines,
      this.onSaved,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is Required';
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.cyan)),
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
