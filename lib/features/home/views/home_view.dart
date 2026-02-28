import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/features/home/widgets/custom_app_bar.dart';
import 'package:test1/features/home/widgets/note_item.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Gap(50),
            CustomAppBar(onPressed: () {}),
            Gap(16),
            NoteItem(),
          ],
        ),
      ),
    );
  }
}

