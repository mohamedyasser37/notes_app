import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit.dart';
import 'package:notes/views/home_view.dart';
import 'package:notes/widgets/custom_app_bar.dart';
import 'package:notes/widgets/note_list.dart';

class HomeViewBody extends StatefulWidget {
  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNote();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          CustomAppBar(
            title: "Notes",
            icon: Icons.notes,
          ),
         const Expanded(child: NoteListView()),
        ],
      ),
    );
  }
}
