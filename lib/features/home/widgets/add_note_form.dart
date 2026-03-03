import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:test1/features/home/widgets/custom_elevated_button.dart';
import 'package:test1/shared/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Gap(30),
          CustomFormTextField(hintText: 'Title'),
          Gap(30),
          CustomFormTextField(
            maxLines: 11,
            hintText: 'Content',
            padding: .only(bottom: 16, left: 16, right: 16, top: 16),
          ),
          Gap(30),
          CustomElevatedButton(onPressed: () {}),
          Gap(30),
        ],
      ),
    );
  }
}
