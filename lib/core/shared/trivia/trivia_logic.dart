import 'package:flutter_modular/flutter_modular.dart';
import 'package:testes_clean/core/shared/trivia/data/datasources/datasource/trivia_datasource_impl.dart';
import 'package:testes_clean/core/shared/trivia/data/repositories/trivia_repository_impl.dart';
import 'package:testes_clean/core/shared/trivia/domain/repositories/trivia_repository.dart';
import 'package:testes_clean/core/shared/trivia/domain/usecases/get_trivia.dart';

class TriviaLogic {
  static List<Bind<Object>> get binds => [
        Bind.lazySingleton<TriviaRepository>(
          (i) => TriviaRepositoryImpl(
            datasource: TriviaDatasourceImpl(
              requestService: i.get(),
            ),
          ),
        ),
        Bind.lazySingleton<GetTrivia>(
          (i) => GetTrivia(
            repository: i.get(),
          ),
        ),
      ];
}
