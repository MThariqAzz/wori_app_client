import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:wori_app/features/chat/data/model/daily_question_model.dart';
import 'package:wori_app/features/chat/data/model/message_model.dart';
import 'package:http/http.dart' as http;

@injectable
class MessageRemoteDataSource {
  final String baseUrl = 'http://192.168.0.171:3000';
  final _storage = FlutterSecureStorage();

  Future<List<MessageModel>> fetchMessages(String conversationId) async {
    final String token = await _storage.read(key: 'token') ?? '';
    final response = await http.get(
      Uri.parse('$baseUrl/messages/$conversationId'),
      headers: {'Authorization': 'Bearer $token'},
    );

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      return data.map((json) => MessageModel.fromJson(json)).toList();
    } else {
      throw Exception(response.body);
    }
  }

  Future<DailyQuestionModel> fetchDailyQuestion(String user_id) async {
    final String token = await _storage.read(key: 'token') ?? '';
    final response = await http.get(
      Uri.parse('$baseUrl/conversations/$user_id/daily_question'),
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return DailyQuestionModel.fromJson(data);
    } else {
      throw Exception(response.body);
    }
  }
}
