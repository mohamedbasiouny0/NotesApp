import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/cubits/get_note/get_note_cubit.dart';
import 'package:test1/features/home/widgets/add_note_bottom_sheet.dart';
import 'package:test1/features/home/widgets/notes_view_body.dart';
import 'package:test1/model/note_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<NoteModel> notesList = [];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNoteCubit, GetNoteState>(
      builder: (context, state) {
        if (state is GetNoteSuccess) {
          notesList = state.notes;
        }
        return Scaffold(
          body: NotesViewBody(notesList: notesList),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Color(0xff2E2E2E),
                context: context,
                builder: (context) => AddNoteBottomSheet(),
              );
            },
            backgroundColor: Colors.orange.shade200,
            foregroundColor: Color(0xff303030),
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}
