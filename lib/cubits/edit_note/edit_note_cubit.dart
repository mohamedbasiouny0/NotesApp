import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:test1/core/constants/constant.dart';

part 'edit_note_state.dart';

class EditNoteCubit extends Cubit<EditNoteState> {
  EditNoteCubit() : super(EditNoteInitial());

  void editNote() {
    var noteBox = Hive.box(kNoteBox);
    // noteBox.put(key, value);
  }
}
