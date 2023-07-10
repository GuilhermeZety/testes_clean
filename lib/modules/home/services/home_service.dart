import 'package:flutter_modular/flutter_modular.dart';
import 'package:testes_clean/core/shared/trivia/data/models/trivia_model.dart';
import 'package:testes_clean/core/shared/trivia/domain/usecases/get_trivia.dart';

class HomeService {
  int number = 0;
  Future<TriviaEntity?> getTrivia(bool random) async {
    if (!random) {
      number++;
    }
    var response = await Modular.get<GetTrivia>()(GetTriviaParams(number: random ? null : number.toString()));

    return response.fold((l) => throw l, (r) => r);
  }
}
