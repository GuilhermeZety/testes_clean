import 'package:flutter_modular/flutter_modular.dart';
import 'package:testes_clean/core/shared/trivia/trivia_logic.dart';
import 'package:testes_clean/modules/home/presentation/pages/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        ...TriviaLogic.binds,
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => HomePage()),
      ];
}
