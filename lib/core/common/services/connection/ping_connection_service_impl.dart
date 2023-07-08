import 'package:dart_ping/dart_ping.dart';
import 'package:flutter/foundation.dart';

import 'package:testes_clean/core/common/services/connection/connection_service.dart';

class PingConnectionService extends ConnectionService {
  @override
  Future<bool> get isConnected async {
    try {
      if (kIsWeb) return true;

      Ping ping = Ping('8.8.8.8', count: 1);
      var response = await ping.stream.first;
      return response.error == null;
    } catch (e) {
      return false;
    }
  }
}
