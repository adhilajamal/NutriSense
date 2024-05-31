import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vitamindeficiencydetection/api/profileRepository.dart';
import 'package:vitamindeficiencydetection/models/patient_profile_model.dart';


class PatientProfileController extends GetxController{
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  
  var patientdetails = Rx<PatientProfileModel?>(null);
  
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
}