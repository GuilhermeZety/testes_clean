import 'package:dartz/dartz.dart';
import 'package:testes_clean/core/common/errors/failures.dart';
import 'package:testes_clean/core/shared/trivia/data/models/trivia_model.dart';

abstract class TriviaRepository {
  Future<Either<Failure, TriviaEntity>> getTrivia(String? number);
}
