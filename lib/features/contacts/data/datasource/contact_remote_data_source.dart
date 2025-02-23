import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:wori_app/features/contacts/data/model/contact_model.dart';
import 'package:http/http.dart' as http;

@injectable
class ContactRemoteDataSource {
  final String baseUrl = 'http://192.168.0.171:3000';
  final _storage = FlutterSecureStorage();

  Future<List<ContactModel>> fetchContacts() async {
    try {
      final token = await _storage.read(key: 'token') ?? '';
      final response = await http.get(Uri.parse('$baseUrl/contacts'),
          headers: {'Authorization': 'Bearer $token'});
      if (response.statusCode == 200) {
        List data = jsonDecode(response.body);
        return data.map((e) => ContactModel.fromJson(e)).toList();
      }
      throw Exception('Failed to load contacts: ${response.statusCode}');
    } catch (e) {
      throw Exception('Failed to load contacts: $e');
    }
  }

  Future<String> addContact({required String email}) async {
    // Ubah return type ke String
    try {
      final token = await _storage.read(key: 'token') ?? '';
      final response = await http.post(
        Uri.parse('$baseUrl/contacts'),
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
        body: jsonEncode({'email': email}),
      );
      if (response.statusCode == 201) {
        return 'Contact added successfully';
      }
      throw Exception('Failed to add contact: ${response.statusCode}');
    } catch (e) {
      throw Exception('Failed to add contact: $e');
    }
  }
}
