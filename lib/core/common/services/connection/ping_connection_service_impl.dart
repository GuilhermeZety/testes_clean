// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dart_ping/dart_ping.dart';
import 'package:flutter/foundation.dart';

import 'package:testes_clean/core/common/services/connection/connection_service.dart';

class PingConnectionService extends ConnectionService {
  final Ping? ping;

  PingConnectionService({
    this.ping,
  });

  @override
  Future<bool> get isConnected async {
    try {
      if (kIsWeb) return true;
      var ping = this.ping;

      ping ??= Ping('8.8.8.8', count: 1);

      var response = await ping.stream.first;
      return response.error == null;
    } catch (e) {
      return false;
    }
  }
}
