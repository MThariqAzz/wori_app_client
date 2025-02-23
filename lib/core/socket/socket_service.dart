import 'dart:async';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

@singleton
class SocketService {
  static final SocketService _instance = SocketService._internal();
  factory SocketService() => _instance;

  late IO.Socket _socket;
  final _storage = const FlutterSecureStorage();
  bool _isInitialized = false;

  SocketService._internal();

  Future<void> initSocket() async {
    if (_isInitialized) return; // Mencegah inisialisasi berulang
    _isInitialized = true;

    String token = await _storage.read(key: 'token') ?? '';
    String userId = await _storage.read(key: 'userId') ?? '';
    print('Initializing new socket connection with userId: $userId');
    print('Token: $token');

    _socket = IO.io(
      'http://192.168.0.171:3000',
      IO.OptionBuilder()
          .setTransports(['websocket'])
          .disableAutoConnect()
          .setExtraHeaders({'Authorization': 'Bearer $token'})
          .setQuery({'userId': userId})
          .build(),
    );

    _socket.connect();

    _socket.onConnect((_) {
      print('Socket connected : ${_socket.id}');
    });

    _socket.onDisconnect((_) {
      print('Socket disconnected');
    });

    _socket.onReconnect((_) {
      print('Socket reconnected : ${_socket.id}');
    });
  }

  IO.Socket get socket => _socket;
}
