import 'dart:convert';
import 'dart:core';
// import 'dart:async';
// import 'package:consume_api_app/models/user_model.dart';
import 'package:consume_api_app/models/user_model.dart';
import 'package:http/http.dart' as http;

class UserService {
  late final String baseUrl = 'https://jsonplaceholder.typicode.com';

  // UserService({required this.baseUrl});

  Future<List<User>> fetchUsers() async {
    final response = await http.get(Uri.parse('$baseUrl/users'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      print('data $data');
      return userFromJson(json.encode(data));
    } else {
      throw Exception('Failed to load users');
    }
  }
}
