import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_add_button.dart';
import 'package:notes/widgets/custom_text_field.dart';

class ShowBottomSheet1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
        child:AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
final GlobalKey<FormState>formKey=GlobalKey();
AutovalidateMode autovalidateMode=AutovalidateMode.disabled;

String? title,subTitle;

  @override
  Widget build(BuildContext context) {
    return  Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(

        children: [
          SizedBox(
            height: 20,
          ),
          customTextField(
            onSaved: (value){
              title=value;
            },
            hint: 'Title',
            maxLines: 1,
          ),

          SizedBox(
            height: 20,
          ),
          customTextField(
            onSaved: (value){
              subTitle=value;
            },
            hint: 'Content',
            maxLines: 5,
          ),
          SizedBox(
            height: 32,
          ),
          CustomAddButton(
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();

              }else{
                autovalidateMode=AutovalidateMode.always;
              }
            },
          ),

        ],
      ),
    );
  }
}


