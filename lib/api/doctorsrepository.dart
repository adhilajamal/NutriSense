import 'dart:convert';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vitamindeficiencydetection/User/UserAppointment/controller/appointmentcontroller.dart';
import 'package:vitamindeficiencydetection/User/UserAppointment/userviewappointment.dart';
// import 'package:vitamindeficiencydetection/User/UserProfile/controller/patientProfileController.dart';
import 'package:vitamindeficiencydetection/models/appointment_details_model.dart';
import 'package:vitamindeficiencydetection/models/doctor_list_model.dart';
import 'package:vitamindeficiencydetection/models/doctros_appointment_model.dart';
import 'package:vitamindeficiencydetection/models/make_appointment_model.dart';
import '../models/doctor_details_model.dart';




class DoctorRepository{
//  final AppointmentController appointmentController = Get.put(AppointmentController());
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
  required String dr_email,
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
      'dr_email' : dr_email,
      'patient_name': patient_name,
      'patient_email': patient_email,
      'place' : place,
      'date' : date,
      'time': time,
      'district':district,
      'contact_no':contactNo
      ,
     });
     log(response.body);
     print('no $time');
  if(response.statusCode==200 || response.statusCode==201){
    Get.to(()=>UserViewAppointment());
    await getAppointmentDetails();
  //  await appointmentController.makeAppointment();
    log(response.body);
    return MakeAppointmentModel.fromJson(json.decode(response.body));
  }
  else{
    throw Exception('error');
  }
}
Future<List<AppointmentDetailsModel>> getAppointmentDetails() async {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  final SharedPreferences prefs = await _prefs;
    var email = prefs.getString('email');
    final response = await http.post(
      Uri.parse('http://127.0.0.1:8000/appointmentDetails'),
      body: {'email': email},
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      List<dynamic> body = json.decode(response.body);
      List<AppointmentDetailsModel> appointmentDetails = body.map((dynamic item) => AppointmentDetailsModel.fromJson(item)).toList();
      return appointmentDetails;
    } else {
      throw Exception('Failed to load appointment details');
    }
  }
  Future<List<DoctrosAppointmentModel>>getDoctorsAppointment() async{
    final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  final SharedPreferences prefs = await _prefs;
    var email = prefs.getString('email');
    final response = await http.post(
      Uri.parse('http://127.0.0.1:8000/doctorsAppoitment'),
      
      body: {
        'email': email
        },
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      List<dynamic> body = json.decode(response.body);
      List<DoctrosAppointmentModel> appointmentDetails = body.map((dynamic item) => DoctrosAppointmentModel.fromJson(item)).toList();
      return appointmentDetails;
    } else {
      throw Exception('Failed to load appointment details');
    }
  }
}

