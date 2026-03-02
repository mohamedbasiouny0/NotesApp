import 'package:flutter/material.dart';
import 'package:test1/features/home/widgets/note_item.dart';
import 'package:test1/model/note_model.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({super.key});

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  final List<NoteModel> noteModelList = [
    NoteModel(
      title: 'First Note',
      noteBody: 'Hello its my first note now',
      color: 0,
      date: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: .zero,
      itemCount: 6,
      itemBuilder: (context, index) => NoteItem(),
    );
  }
}
