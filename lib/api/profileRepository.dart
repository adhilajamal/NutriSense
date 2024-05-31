import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:vitamindeficiencydetection/models/patient_profile_model.dart';


class ProfileRepository{
  Future<PatientProfileModel>getPatientProfile(String email) async{
     final body = jsonEncode({
      
      'email': email,
      
    }); 
    final response = await http.post(Uri.parse('http://127.0.0.1:8000/PatientProfile'), headers: {'Content-Type' : 'application/json'}, body: body);
  if(response.statusCode==200 || response.statusCode==201){
    log(response.body);
    return PatientProfileModel.fromJson(json.decode(response.body));
  }
  else{
    throw Exception('error');
  }
}
}