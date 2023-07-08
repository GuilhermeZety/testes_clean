import 'package:testes_clean/core/shared/trivia/data/models/trivia_model.dart';

abstract class TriviaDatasource{
  Future<TriviaModel> getTrivia(String? number);
}