import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:test1/cubits/get_note/get_note_cubit.dart';
import 'package:test1/features/edit_note/views/edit_note.dart';
import 'package:test1/model/note_model.dart';
import 'package:test1/shared/widgets/custom_text.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final formattedDate = DateFormat('MMMM d,yyyy').format(now);
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => EditNoteView(note: note)),
      ),
      child: Container(
        padding: .all(32),
        margin: .only(bottom: 16),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width * .5,
        decoration: BoxDecoration(
          color: Colors.amber.shade100,
          borderRadius: .circular(16),
        ),
        child: Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  CustomText(
                    text: note.title,
                    color: Colors.black,
                    fontWeight: .w600,
                    fontSize: 24,
                  ),
                  Gap(16),
                  CustomText(
                    text: note.noteBody,
                    color: Colors.black54,
                    fontWeight: .w400,
                    fontSize: 18,
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: .spaceBetween,
              crossAxisAlignment: .end,
              children: [
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<GetNoteCubit>(context).getAllNotes();
                  },
                  icon: Icon(Icons.delete_rounded, size: 30),
                  style: IconButton.styleFrom(foregroundColor: Colors.black),
                ),
                CustomText(
                  text: formattedDate,
                  color: Colors.black54,
                  fontWeight: .w400,
                  fontSize: 13,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
