import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_text_field.dart';

class ShowBottomSheet1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(
              height: 20,
            ),
            customTextField(
              hint: 'Title',
              maxLines: 1,
            ),

            SizedBox(
              height: 20,
            ),
            customTextField(
              hint: 'text',
              maxLines: 5,
            ),
            SizedBox(
              height: 32,
            ),

          ],
        ),
      ),
    );
  }
}

