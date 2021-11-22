import 'package:cinema/data_soucres/api_urls.dart';
import 'package:cinema/models/login.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginService {
  Future<LoginResponse> login(Login login) async {
    final response = await http.post(API_LOGIN, body: login.toJson());

    if (response.statusCode == 200 || response.statusCode == 400) {
      return LoginResponse.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }
}
