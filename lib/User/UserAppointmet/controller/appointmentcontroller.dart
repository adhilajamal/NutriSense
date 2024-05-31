import 'package:flutter/material.dart';
// import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';
import 'package:vitamindeficiencydetection/api/doctorsrepository.dart';
import 'package:vitamindeficiencydetection/models/doctor_details_model.dart';
import 'package:vitamindeficiencydetection/models/doctor_list_model.dart';

class AppointmentController extends GetxController{
  var doctors = <Doctors>[].obs;
  var doctordetails = Rx<DoctorDetailsModel?>(null);
  TextEditingController patientNameController = TextEditingController(); 
  TextEditingController placeController = TextEditingController(); 
  TextEditingController dateController = TextEditingController(); 
  TextEditingController timeController = TextEditingController(); 
  TextEditingController contactNumberController = TextEditingController(); 
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getDoctors();
  }
  Future <void> getDoctors()async{
    final repo = await DoctorRepository().getdoctorslist();
    doctors.value = repo?.doctors??[];
  }
  Future <void> getDoctorsDetail(String email)async{
    final repo = await DoctorRepository().getdoctordetails(email);
    doctordetails.value = repo;
  }
  // Future <void> makeAppointment(String email)async{
  //   final repo = await DoctorRepository().makeAppointment(dr_name: , patient_name: patientNameController.text, patient_email: patient_email, place: placeController.text, date: dateController.text, time: timeController.text, district: district, contactNo: contactNumberController.text);
  //   doctordetails.value = repo;
  // }
}