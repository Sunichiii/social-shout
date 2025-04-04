part of 'samachar_bloc.dart';

@immutable
sealed class SamacharEvent {}

class FetchSamacharEvent extends SamacharEvent{
  final String category;
  FetchSamacharEvent({required this.category});
}
