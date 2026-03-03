import 'package:flutter/material.dart';
import 'package:test1/features/home/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  // final List<NoteModel> noteModelList = [
  //   NoteModel(
  //     title: 'First Note',
  //     noteBody: 'Hello its my first note now',
  //     color: 0,
  //     date: '',
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: .zero,
      itemCount: 6,
      itemBuilder: (context, index) => NoteItem(),
    );
  }
}
