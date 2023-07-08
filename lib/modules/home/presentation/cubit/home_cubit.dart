import 'package:bloc/bloc.dart';
import 'package:testes_clean/core/shared/trivia/data/models/trivia_model.dart';
import 'package:testes_clean/modules/home/presentation/services/home_service.dart';
export 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState());
  HomeService service = HomeService();

  void getTrivia() async {
    try {
      emit(HomeLoadingState());
      var trivia = await service.getTrivia(true);

      if (trivia != null) {
        return emit(HomeTriviaState(trivia: trivia));
      }

      return emit(HomeInitialState());
    } catch (err) {
      emit(HomeErrorState(message: err.toString()));
      return emit(HomeInitialState());
    }
  }
}
