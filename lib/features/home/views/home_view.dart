import 'package:flutter/material.dart';
import 'package:test1/features/home/widgets/add_note_bottom_sheet.dart';
import 'package:test1/features/home/widgets/notes_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesViewBody(),
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
  }
}
