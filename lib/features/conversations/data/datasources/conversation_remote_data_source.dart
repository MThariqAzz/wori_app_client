import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:wori_app/core.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@injectable
class ConversationRemoteDataSource {
  final String baseUrl = 'http://192.168.0.171:3000';
  final _storage = FlutterSecureStorage();

  Future<List<ConversationEntity>> fetchConversations() async {
    try {
      String? token = await _storage.read(key: 'token');

      if (token == null) {
        throw Exception('Authentication token not found');
      }

      final response = await http.get(
        Uri.parse('$baseUrl/conversations'),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        List data = jsonDecode(response.body);
        return data.map((json) => ConversationModel.fromJson(json)).toList();
      } else if (response.statusCode == 401) {
        throw Exception('Unauthorized access');
      } else if (response.statusCode == 404) {
        throw Exception('Conversations not found');
      } else {
        throw Exception(
            'Failed to fetch conversations: ${response.statusCode}');
      }
    } on FormatException {
      throw Exception('Failed to parse conversation data');
    } on http.ClientException {
      throw Exception('Network error occurred');
    } catch (e) {
      print(e);
      throw Exception('An unexpected error occurred: $e');
    }
  }

  Future<String> checkOrCreateConversation({required String contactId}) async {
    try {
      final token = await _storage.read(key: 'token') ?? '';
      final response = await http.post(
        Uri.parse('$baseUrl/conversations/check-or-create'),
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
        body: jsonEncode({'contactId': contactId}),
      );

      if (response.statusCode == 201) {
        final data = jsonDecode(response.body);
        return data['conversationId'];
      }
      throw Exception('Failed to create conversation: ${response.statusCode}');
    } catch (e) {
      throw Exception('Failed to create conversation: $e');
    }
  }
}
