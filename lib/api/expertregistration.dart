import 'dart:convert';
import 'package:http/http.dart' as http;

class ExpertSignUp {
  static Future<dynamic> fetchDataFromAPI(String user_name,String age,String gender,String contact,String email, String password, String about, String address, String district, String workingtime, String qualification, String proof) async {
    final body = jsonEncode({
      'user_name': user_name,
      'age': age,
      'gender': gender,
      'contact':contact,
      'email': email,
      'pwd': password,
      'about': about,
      'address': address,
      'district': district,
      'workingtime':workingtime,
      'qualification': qualification,
      'proof': proof,
      

    });

    final response = await http.post(Uri.parse('http://127.0.0.1:8000/DoctorRegistration'), body: body, headers: {'Content-Type' : 'application/json'});
    
    print('Response status code: ${response.statusCode}');
    print('Response body: ${response.body}');
    return {
      'status' : response.statusCode,'body' : json.decode(response.body) 
    };
    // if (response.statusCode == 200) {
    //   // If the server returns a 200 OK response, parse the JSON
    //   return json.decode(response.body);
    // } else {
    //   // If the server did not return a 200 OK response, return null
    //   return null;
    // }
  }
}