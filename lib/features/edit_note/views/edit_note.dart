import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/features/edit_note/widgets/edit_note_body.dart';
import 'package:test1/model/note_model.dart';
import 'package:test1/shared/widgets/custom_app_bar.dart';
import 'package:test1/shared/widgets/custom_text_field.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  @override
  void initState() {
    titleController.text = widget.note.title;
    contentController.text = widget.note.noteBody;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: EditNoteBody(
          widget: widget,
          titleController: titleController,
          contentController: contentController,
        ),
      ),
    );
  }
}
