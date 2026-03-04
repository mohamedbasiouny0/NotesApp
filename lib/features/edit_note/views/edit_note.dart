import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/shared/widgets/custom_app_bar.dart';
import 'package:test1/shared/widgets/custom_text_field.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key});

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  TextEditingController titleController = TextEditingController();

  TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const .only(right: 16, left: 16, top: 60),
          child: Column(
            children: [
              CustomAppBar(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.check),
                titleText: 'Edit Note',
              ),
              Gap(30),
              CustomFormTextField(
                hintText: 'Title',
                controller: titleController,
              ),
              Gap(16),
              CustomFormTextField(
                hintText: 'content',
                maxLines: 11,
                controller: contentController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
