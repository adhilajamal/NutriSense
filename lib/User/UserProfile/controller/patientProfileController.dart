import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vitamindeficiencydetection/api/profileRepository.dart';
import 'package:vitamindeficiencydetection/models/patient_change_password.dart';
import 'package:vitamindeficiencydetection/models/patient_profile_model.dart';


class PatientProfileController extends GetxController{
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  
  var patientdetails = Rx<PatientProfileModel?>(null);
  var status = ''.obs;
  TextEditingController oldPasswordController = TextEditingController(); 
  TextEditingController newPasswordController = TextEditingController(); 
  TextEditingController confirmnewPasswordController = TextEditingController(); 


  
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getPatientDetails();   
  }
 
  Future <void> getPatientDetails()async{
    final SharedPreferences prefs = await _prefs;
    var email = prefs.getString('email');
    final repo = await ProfileRepository().getPatientProfile(email??'');
    patientdetails.value = repo;
  }
  Future <dynamic> patientChangePwd()async {
    // var data = password.value;
    final SharedPreferences prefs = await _prefs;
    var email = prefs.getString('email');
    final repo = await ProfileRepository().patientChangePassword(email??'',oldPasswordController.text,newPasswordController.text);
    status.value= repo;
    // password.value = repo;
    
  }
}