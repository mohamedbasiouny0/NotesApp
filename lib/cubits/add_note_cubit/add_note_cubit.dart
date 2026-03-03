import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:test1/core/constants/constant.dart';
import 'package:test1/model/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Future<void> addNote(NoteModel model) async {
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
