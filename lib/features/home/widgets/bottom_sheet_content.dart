import 'package:flutter/material.dart';
import 'package:test1/features/home/widgets/add_note_form.dart';

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: .symmetric(horizontal: 16),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: AddNoteForm(),
        ),
      ),
    );
  }
}
