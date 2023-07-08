import 'package:testes_clean/core/common/constants/app_api_path.dart';
import 'package:testes_clean/core/common/errors/exceptions.dart';
import 'package:testes_clean/core/common/services/requests/request_service.dart';
import 'package:testes_clean/core/shared/trivia/data/datasources/datasource/trivia_datasource.dart';
import 'package:testes_clean/core/shared/trivia/data/models/trivia_model.dart';

class TriviaDatasourceImpl extends TriviaDatasource {
  final RequestService requestService;

  TriviaDatasourceImpl({
    required this.requestService,
  });

  @override
  Future<TriviaModel> getTrivia(String? number) async {
    var response = await requestService.get(
      number != null ? AppApiPath.trivia(number) : AppApiPath.randonTrivia,
    );

    if (response.statusCode > 199 && response.statusCode < 300) {
      var number = int.tryParse(response.data.split('')[0]);

      Map<String, dynamic> data = {};
      data['number'] = number ?? 0;
      data['trivia'] = response.data;

      var a = TriviaModel.fromMap(data);

      return a;
    } else {
      throw ServerException(
        message: 'Endpoint de trivias não retornou sucesso',
      );
    }
  }
}
