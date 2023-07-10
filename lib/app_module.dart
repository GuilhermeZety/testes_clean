import 'package:flutter_modular/flutter_modular.dart';
import 'package:testes_clean/core/common/services/connection/connection_service.dart';
import 'package:testes_clean/core/common/services/connection/ping_connection_service_impl.dart';
import 'package:testes_clean/core/common/services/requests/dio_request_service.dart';
import 'package:testes_clean/core/common/services/requests/request_service.dart';
import 'package:testes_clean/modules/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton<RequestService>((i) => DioRequestService(connectionService: i.get())),
        Bind.singleton<ConnectionService>((i) => PingConnectionService()),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/home', module: HomeModule()),
      ];
}
