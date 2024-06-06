import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:vitamindeficiencydetection/models/doctor_profile.dart';
import 'package:vitamindeficiencydetection/models/patient_change_password.dart';
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
Future<dynamic>patientChangePassword(String email, String oldPassword, String newPassword) async{
     final body = jsonEncode({
      
      'email': email,
      'oldpassword' : oldPassword,
      'newpassword' : newPassword
    }); 
    final response = await http.post(Uri.parse('http://127.0.0.1:8000/patientChangePassword'), headers: {'Content-Type' : 'application/json'}, body: body);
  // if(response.statusCode==200 || response.statusCode==201){
  //   log(response.body);
  //   return response.statusCode;
  // }
  // else{
  //   throw Exception('error');
   return response.statusCode;
  // }
}

Future<DoctorProfile>getDoctorProfile(String email) async{
   final body = jsonEncode({
      
      'email': email,
      
    }); 
    final response = await http.post(Uri.parse('http://127.0.0.1:8000/DoctorProfile'), headers: {'Content-Type' : 'application/json'}, body: body);
  if(response.statusCode==200 || response.statusCode==201){
    log(response.body);
    return DoctorProfile.fromJson(json.decode(response.body));
  }
  else{
    throw Exception('error');
  }
}
}