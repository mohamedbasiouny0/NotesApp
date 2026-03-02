import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/features/home/widgets/custom_elevated_button.dart';
import 'package:test1/shared/widgets/custom_text_field.dart';

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
          child: Column(
            children: [
              Gap(30),
              CustomTextField(hintText: 'Title'),
              Gap(30),
              CustomTextField(
                maxLines: 11,
                hintText: 'Content',
                padding: .only(bottom: 16, left: 16, right: 16, top: 16),
              ),
              Gap(30),
              CustomElevatedButton(),
              Gap(30),
            ],
          ),
        ),
      ),
    );
  }
}
