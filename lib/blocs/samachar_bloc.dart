import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:social_shout/domain/use_cases/fetch_news.dart';

part 'samachar_event.dart';

part 'samachar_state.dart';

class SamacharBloc extends Bloc<SamacharEvent, SamacharState> {
  final FetchSamacharUsecase fetchSamacharUsecase;

  SamacharBloc({required this.fetchSamacharUsecase})
    : super(SamacharInitialState()) {
    on<FetchSamacharEvent>(_onFetchSamachar);
  }

  Future<void> _onFetchSamachar(
    FetchSamacharEvent event,
    Emitter<SamacharState> emit,
  ) async {
    emit(SamacharLoadingState());
    try {
      final samacharList = await fetchSamacharUsecase.execute(event.category);
      emit(SamacharLoadedState(samacharList));
    } catch (e) {
      emit(SamacharErrorState("Failed to fetch the samachar: ${e.toString()}"));
    }
  }
}
