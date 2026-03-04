import 'package:flutter/material.dart';
import 'package:test1/features/home/widgets/note_item.dart';
import 'package:test1/model/note_model.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key, required this.notesList});

  final List<NoteModel> notesList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: .zero,
      itemCount: notesList.length,
      itemBuilder: (context, index) => NoteItem(model: notesList[index]),
    );
  }
}
