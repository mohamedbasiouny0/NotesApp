part of 'get_note_cubit.dart';

@immutable
sealed class GetNoteState {}

final class GetNoteInitial extends GetNoteState {}



final class GetNotefaliure extends GetNoteState {
  final String errMessage;
  GetNotefaliure({required this.errMessage});
}
