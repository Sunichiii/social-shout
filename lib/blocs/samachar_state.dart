part of 'samachar_bloc.dart';

@immutable
sealed class SamacharState {}

final class SamacharInitialState extends SamacharState {}

class SamacharLoadingState extends SamacharState{}

class SamacharLoadedState extends SamacharState{
  final List<Map<String, dynamic>> samcharharu;
  SamacharLoadedState(this.samcharharu);
}


class SamacharErrorState extends SamacharState{
  final String message;
  SamacharErrorState(this.message);
}