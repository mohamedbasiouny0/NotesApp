import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:test1/model/note_model.dart';
import 'package:test1/shared/widgets/custom_app_bar.dart';
import 'package:test1/features/home/widgets/notes_listview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key, required this.notesList});
  final List<NoteModel> notesList;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Gap(50),
          CustomAppBar(
            onPressed: () {},
            icon: Icon(CupertinoIcons.search),
            titleText: 'Notes',
          ),
          Gap(16),
          Expanded(child: NotesListView(notesList: notesList)),
        ],
      ),
    );
  }
}
