import 'package:dart_ping/dart_ping.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:testes_clean/core/common/services/connection/connection_service.dart';
import 'package:testes_clean/core/common/services/connection/ping_connection_service_impl.dart';
import 'package:testes_clean/core/common/services/requests/dio_request_service.dart';
import 'package:testes_clean/core/common/services/requests/request_result.dart';

@GenerateNiceMocks([
  MockSpec<Ping>(),
])
import 'dio_request_service_test.mocks.dart';

void main() {
  late MockPing ping;
  late ConnectionService connectionService;

  late Dio dio;
  late DioAdapter dioAdapter;
  late DioRequestService service;

  const path = 'https://test.com';

  setUpAll(() {
    ping = MockPing();
    connectionService = PingConnectionService(ping: ping);

    dio = Dio();
    dioAdapter = DioAdapter(dio: dio);
    service = DioRequestService(dio: dio, connectionService: connectionService);
  });

  group('DIO REQUEST SERVICE:', () {
    Map<String, dynamic> successResponse = {'message': 'Success!'};

    group('GET -', () {
      test('success return', () async {
        when(ping.stream).thenAnswer((_) => Stream.fromIterable([PingData()]));

        dioAdapter.onGet(
          path,
          (server) => server.reply(
            200,
            successResponse,
            delay: const Duration(seconds: 1),
          ),
        );

        RequestResult response = await service.get(path);

        expect(response.data, successResponse);
      });
    });
  });
}
