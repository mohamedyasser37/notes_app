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
            addButton(),
          ],
        ),
      ),
    );
  }
}
class addButton extends StatelessWidget {
  const addButton({Key? key}) : super(key: key);

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
