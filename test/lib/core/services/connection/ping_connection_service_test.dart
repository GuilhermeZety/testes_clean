import 'package:dart_ping/dart_ping.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:testes_clean/core/common/services/connection/ping_connection_service_impl.dart';

@GenerateNiceMocks([
  MockSpec<Ping>(),
])
import 'ping_connection_service_test.mocks.dart';

void main() {
  late MockPing ping;
  late PingConnectionService service;

  setUp(() {
    ping = MockPing();
    service = PingConnectionService(ping: ping);
  });

  group('VERIFY CONNECTION:', () {
    test('connection ok', () async {
      when(ping.stream).thenAnswer((_) => Stream.fromIterable([PingData()]));

      bool isConnected = await service.isConnected;

      verify(ping.stream);
      expect(isConnected, true);
    });
    test('connection error return', () async {
      when(ping.stream).thenAnswer((_) => Stream.fromIterable([PingData(error: PingError(ErrorType.unknown))]));

      bool isConnected = await service.isConnected;

      verify(ping.stream);
      expect(isConnected, false);
    });
    test('connection throw error', () async {
      when(ping.stream).thenThrow(Exception());

      bool isConnected = await service.isConnected;

      verify(ping.stream);
      expect(isConnected, false);
    });
  });
}
