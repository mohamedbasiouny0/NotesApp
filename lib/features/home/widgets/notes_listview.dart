import 'package:flutter/material.dart';
import 'package:test1/features/home/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: .zero,
      itemCount: 6,
      itemBuilder: (context, index) => NoteItem(),
    );
  }
}
