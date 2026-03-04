import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/cubits/get_note/get_note_cubit.dart';
import 'package:test1/features/home/widgets/note_item.dart';
import 'package:test1/model/note_model.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNoteCubit, GetNoteState>(
      builder: (context, state) {
        List<NoteModel> notesList =
            BlocProvider.of<GetNoteCubit>(context).notesList ?? [];
        return ListView.builder(
          padding: .zero,
          itemCount: notesList.length,
          itemBuilder: (context, index) => NoteItem(note: notesList[index]),
        );
      },
    );
  }
}
