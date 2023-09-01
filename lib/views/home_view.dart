import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 60,),
          Row(
            children: [
              Text('Notes',style: TextStyle(fontSize: 30),),
              Spacer(),
              Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white10
                ),
                child: Center(child: Icon(Icons.search,size: 30,)),
              ),
            ],
          )


        ],
      ),
    );
  }
}

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
