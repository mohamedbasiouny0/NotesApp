import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:test1/features/home/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteSuccess) {
          Navigator.pop(context);
          isLoading = false;
        }
      },
      builder: (context, state) {
        if (state is AddNoteLoading) {
          isLoading = true;
        }
        return AbsorbPointer(
          absorbing: state is AddNoteLoading ? true : false,
          child: Container(
            margin: .only(
              right: 16,
              left: 16,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: SingleChildScrollView(
                child: AddNoteForm(isLoading: isLoading),
              ),
            ),
          ),
        );
      },
    );
  }
}
