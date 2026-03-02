import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/features/home/widgets/custom_app_bar.dart';
import 'package:test1/features/home/widgets/note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Gap(50),
          CustomAppBar(onPressed: () {}),
          Gap(16),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: .zero,
      itemCount: 6,
      itemBuilder: (context, index) => NoteItem(),
    );
  }
}
