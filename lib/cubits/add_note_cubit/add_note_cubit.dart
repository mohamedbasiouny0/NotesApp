import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:test1/core/constants/constant.dart';
import 'package:test1/model/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color selectedColor = const Color(0xFFFFC1CC);

  void updateColor(Color color) {
    selectedColor = color;
    // You could also emit a Specific state here if the UI needs to react
  }

  Future<void> addNote(NoteModel model) async {
    // ignore: deprecated_member_use
    model.color = selectedColor.value;

    try {
      emit(AddNoteLoading());

      var noteBox = Hive.box<NoteModel>(kNoteBox);
      await noteBox.add(model);
      emit(AddNoteSuccess());
    } on Exception catch (e) {
      emit(AddNoteFaliure(errMessage: e.toString()));
    }
  }
}
