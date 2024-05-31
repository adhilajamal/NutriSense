import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:vitamindeficiencydetection/models/doctor_list_model.dart';
import 'package:vitamindeficiencydetection/models/make_appointment_model.dart';
import '../models/doctor_details_model.dart';




class DoctorRepository{
  Future<DoctorListModel>getdoctorslist() async{
 
    final response = await http.get(Uri.parse('http://127.0.0.1:8000/get_all_doctors'), headers: {'Content-Type' : 'application/json'});
  if(response.statusCode==200 || response.statusCode==201){
    log(response.body);
    return DoctorListModel.fromJson(json.decode(response.body));
  }
  else{
    throw Exception('error');
  }
}
 Future<DoctorDetailsModel>getdoctordetails(String email) async{
 
    final response = await http.post(Uri.parse('http://127.0.0.1:8000/DoctorDetails'),
     body: {
      'email': email
     });
  if(response.statusCode==200 || response.statusCode==201){
    log(response.body);
    return DoctorDetailsModel.fromJson(json.decode(response.body));
  }
  else{
    throw Exception('error');
  }
}
Future<MakeAppointmentModel>makeAppointment({
  required String dr_name,
  required String patient_name,
  required String patient_email,
  required String place,
  required String date,
  required String time,
  required String district,
  required String contactNo

}) async{
 
    final response = await http.post(Uri.parse('http://127.0.0.1:8000/MakeAppointment'),
     body: {
      'dr_name' : dr_name,
      'patient_name': patient_name,
      'patient_email': patient_email,
      'place' : place,
      'date' : date,
      'time': time,
      'district':district
      ,
     });
  if(response.statusCode==200 || response.statusCode==201){
    log(response.body);
    return MakeAppointmentModel.fromJson(json.decode(response.body));
  }
  else{
    throw Exception('error');
  }
}
}

