import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginUser {
  static Future<dynamic> fetchDataFromAPI(String email, String password) async {
    final body = jsonEncode({
      'email': email,
      'pwd': password,  
    });
    
    final response = await http.post(Uri.parse('http://127.0.0.1:8000/loginUser'), body: body, headers: {'Content-Type' : 'application/json'});
    final data =json.decode(response.body);
    
    return {'statusCode' : response.statusCode,'body' : data['role']};
    // if (response.statusCode == 200) {
    //   // If the server returns a 200 OK response, parse the JSON
    //   return json.decode(response.body);
    // } else {
    //   // If the server did not return a 200 OK response, return null
    //   return null;
    // }
  }
}