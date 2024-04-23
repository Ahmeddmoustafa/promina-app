import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:promina_app/data/models/user_model.dart';

class AuthRemoteSource {
  // URL SERVER
  final String baseUrl = 'https://flutter.prominaagency.com/api/';

  Future<UserModel> login(String email, String password) async {
    // req Body
    Map<String, String> loginData = {
      'email': email,
      'password': password,
    }; // Data to be Parsed
    String requestBody = json.encode(loginData);

    try {
      final response = await http.post(
        Uri.parse("${baseUrl}auth/login"),
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: requestBody, // Pass the encoded JSON data
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> body = json.decode(response.body);
        return UserModel.fromJson(body);
      }
      print(response.body);
      throw "Invalid Credentials";
    } catch (err) {
      print(err.toString());
      throw "Invalid Credentials";
    }
  }

  Future<void> logout() async {}
}
