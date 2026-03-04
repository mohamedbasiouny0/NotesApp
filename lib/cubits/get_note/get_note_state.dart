part of 'get_note_cubit.dart';

@immutable
sealed class GetNoteState {}

final class GetNoteInitial extends GetNoteState {}

final class GetNoteSuccess extends GetNoteState {
  final List<NoteModel> notes;

  GetNoteSuccess({required this.notes});
}

final class GetNotefaliure extends GetNoteState {
  final String errMessage;
  GetNotefaliure({required this.errMessage});
}
