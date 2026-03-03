import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:test1/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:test1/features/home/widgets/custom_elevated_button.dart';
import 'package:test1/model/note_model.dart';
import 'package:test1/shared/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController titleController =TextEditingController();
  TextEditingController contentController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    NoteModel model =NoteModel(title: titleController.text,noteBody: contentController.text);
    return Form(
      key: formKey,
      child: Column(
        children: [
          Gap(30),
          CustomFormTextField(hintText: 'Title',controller:titleController ,),
          Gap(30),
          CustomFormTextField(
            controller: contentController,
            maxLines: 11,
            hintText: 'Content',
            padding: .only(bottom: 16, left: 16, right: 16, top: 16),
          ),
          Gap(30),
          CustomElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                BlocProvider.of<AddNoteCubit>(context).addNote(model)
              }
            },
          ),
          Gap(30),
        ],
      ),
    );
  }
}
