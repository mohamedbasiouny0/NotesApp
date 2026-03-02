import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/features/home/widgets/bottom_sheet_content.dart';
import 'package:test1/features/home/widgets/notes_view_body.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Color(0xff2E2E2E),
            context: context,
            builder: (context) => BottomSheetContent(),
          );
        },
        backgroundColor: Colors.orange.shade200,
        foregroundColor: Color(0xff303030),
        child: Icon(Icons.add),
      ),
    );
  }
}
