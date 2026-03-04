import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/cubits/get_note/get_note_cubit.dart';
import 'package:test1/features/home/widgets/note_item.dart';
import 'package:test1/model/note_model.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({super.key});

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  List<Color> pastelColors = [
    Color(0xFFFFC1CC), // Pink
    Color(0xFFFFF1C1), // Light Yellow
    Color(0xFFC1FFD7), // Mint Green
    Color(0xFFC1D4FF), // Light Blue
    Color(0xFFE8C1FF), // Lavender
    Color(0xFFFFE0C1), // Peach
    Color(0xFFBCE0FD), // Baby Blue
    Color(0xFFFFCFC1), // Coral
    Color(0xFFD1FFC1), // Light Green
    Color(0xFFFFF4C1), // Cream
    Color(0xFFC1FFF3), // Aqua
    Color(0xFFF5C1FF), // Orchid
    Color(0xFFFFE6C1), // Light Orange
    Color(0xFFC1E0FF), // Soft Sky Blue
    Color(0xFFFFC1E3), // Light Pink
    Color(0xFFE0FFC1), // Pale Green
    Color(0xFFFFF1D1), // Soft Yellow
    Color(0xFFD1C1FF), // Soft Purple
    Color(0xFFFFD1C1), // Light Salmon
    Color(0xFFC1FFF0), // Pale Cyan
  ];
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
