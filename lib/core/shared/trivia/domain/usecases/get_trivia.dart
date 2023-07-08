// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:testes_clean/core/common/errors/failures.dart';
import 'package:testes_clean/core/common/features/usecases/usecase.dart';
import 'package:testes_clean/core/shared/trivia/data/models/trivia_model.dart';
import 'package:testes_clean/core/shared/trivia/domain/repositories/trivia_repository.dart';

class GetTrivia extends Usecase<TriviaEntity, GetTriviaParams> {
  final TriviaRepository repository;

  GetTrivia({
    required this.repository,
  });

  @override
  Future<Either<Failure, TriviaEntity>> call(
    GetTriviaParams params,
  ) async {
    return await repository.getTrivia(params.number);
  }
}

class GetTriviaParams {
  final String? number;

  GetTriviaParams({
    this.number,
  });
}
