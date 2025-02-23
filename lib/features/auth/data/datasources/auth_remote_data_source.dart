import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:wori_app/features/auth/data/models/user_model.dart';
import 'package:http/http.dart' as http;

@injectable
class AuthRemoteDataSource {
  final String baseUrl = 'http://192.168.0.171:3000/auth';

  Future<UserModel> login(
      {required String email, required String password}) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/login'),
        body: jsonEncode({'email': email, 'password': password}),
        headers: {'Content-Type': 'application/json'},
      );

      return UserModel.fromJson(jsonDecode(response.body));
    } catch (e) {
      throw Exception('Login failed: $e');
    }
  }

  Future<UserModel> register({
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/register'),
        body: jsonEncode(
            {'username': username, 'email': email, 'password': password}),
        headers: {'Content-Type': 'application/json'},
      );

      return UserModel.fromJson(jsonDecode(response.body));
    } catch (e) {
      throw Exception('Registration failed: $e');
    }
  }
}
