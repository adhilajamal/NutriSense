import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vitamindeficiencydetection/api/doctorsrepository.dart';
import 'package:vitamindeficiencydetection/models/appointment_details_model.dart';

class AppointmentDetailsController extends GetxController {
  var data = <AppointmentDetailsModel>[].obs;
  var appointmentdetails = Rx<AppointmentDetailsModel?>(null);

  @override
  void onInit() {
    super.onInit();
    getAppointmentDetail();
  }

  Future<void> getAppointmentDetail() async {
    
    
    // Ensure that getAppointmentDetails returns a list of AppointmentDetailsModel
    final repo = await DoctorRepository().getAppointmentDetails();
    data.addAll(repo); // Add the list of appointment details to data
  }
}
