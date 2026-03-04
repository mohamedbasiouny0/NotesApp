import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:test1/core/constants/constant.dart';
import 'package:test1/model/note_model.dart';

part 'get_note_state.dart';

class GetNoteCubit extends Cubit<GetNoteState> {
  GetNoteCubit() : super(GetNoteInitial());
  List<NoteModel>? notesList;
  void getAllNotes() {
    var noteBox = Hive.box<NoteModel>(kNoteBox);
    notesList = noteBox.values.toList();
    emit(GetNoteSuccess());
  }
}
