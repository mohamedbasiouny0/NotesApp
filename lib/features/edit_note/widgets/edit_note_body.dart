import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/features/edit_note/views/edit_note.dart';
import 'package:test1/shared/widgets/custom_app_bar.dart';
import 'package:test1/shared/widgets/custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({
    super.key,
    required this.widget,
    required this.titleController,
    required this.contentController,
  });

  final EditNoteView widget;
  final TextEditingController titleController;
  final TextEditingController contentController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .only(right: 16, left: 16, top: 60),
      child: Column(
        children: [
          CustomAppBar(
            onPressed: () {
              widget.note.save();
              Navigator.pop(context);
            },
            icon: Icon(Icons.check),
            titleText: 'Edit Note',
          ),
          Gap(30),
          CustomFormTextField(
            onChanged: (value) {
              widget.note.title = value;
            },
            hintText: 'Title',
            controller: titleController,
          ),
          Gap(16),
          CustomFormTextField(
            onChanged: (value) {
              widget.note.noteBody = value;
            },
            hintText: 'content',
            maxLines: 11,
            controller: contentController,
          ),
        ],
      ),
    );
  }
}
