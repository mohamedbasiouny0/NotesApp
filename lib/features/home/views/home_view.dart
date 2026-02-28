import 'package:flutter/material.dart';
import 'package:test1/features/home/widgets/notes_view_body.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: NotesViewBody());
  }
}
