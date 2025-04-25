import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tiket_wisata/data/models/user_model.dart';

class AuthRemoteDatasources {
  final String baseUrl = 'https://tiket.febryann.my.id/api';

  Future<Map<String, dynamic>> login(String email, String password) async {
    try {
      final response = await http.post(Uri.parse('$baseUrl/login'),
          headers: {
            'Content-Type': 'application/json; charset=UTF-8',
            'Accept': 'application/json',
          },
          body: jsonEncode({
            'email': email,
            'password': password,
          }));
      final data = jsonDecode(response.body);
      print('[LOGIN RESPONSE] ${response.statusCode} - $data');

      if (response.statusCode == 200 && data['token'] != null) {
        return {
          'token': data['token'],
          'user': UserModel.fromJson(data['user']),
        };
      } else {
        throw Exception(data['message'] ?? 'Login Failed');
      }
    } catch (e) {
      print('[LOGIN ERROR] $e');
      throw Exception('Login Failed: $e');
    }
  }
}

