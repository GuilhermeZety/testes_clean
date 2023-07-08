import 'package:dartz/dartz.dart';
import 'package:testes_clean/core/common/errors/failures.dart';
import 'package:testes_clean/core/common/services/treater/treater_service.dart';
import 'package:testes_clean/core/shared/trivia/data/datasources/datasource/trivia_datasource.dart';
import 'package:testes_clean/core/shared/trivia/domain/entities/trivia_entity.dart';
import 'package:testes_clean/core/shared/trivia/domain/repositories/trivia_repository.dart';

class TriviaRepositoryImpl extends TriviaRepository {
  final TriviaDatasource datasource;

  TriviaRepositoryImpl({
    required this.datasource,
  });

  @override
  Future<Either<Failure, TriviaEntity>> getTrivia(String? number) {
    return TreaterService()<TriviaEntity>(() {
      return datasource.getTrivia(number);
    });
  }
}
