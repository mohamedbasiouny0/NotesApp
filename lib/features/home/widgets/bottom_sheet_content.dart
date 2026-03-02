import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/features/home/widgets/custom_text_field.dart';

class BottomSheetContent extends StatefulWidget {
  const BottomSheetContent({super.key});

  @override
  State<BottomSheetContent> createState() => _BottomSheetContentState();
}

class _BottomSheetContentState extends State<BottomSheetContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: .symmetric(horizontal: 16),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
          setState(() {});
        },
        child: Column(
          children: [
            Gap(30),
            CustomtextField(hintText: 'Title'),
            Gap(30),
            CustomtextField(
              hintText: 'Content',
              padding: .only(bottom: 250, left: 16, right: 16),
            ),
          ],
        ),
      ),
    );
  }
}
