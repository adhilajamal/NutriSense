import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vitamindeficiencydetection/api/doctorsrepository.dart';
import 'package:vitamindeficiencydetection/models/appointment_details_model.dart';
import 'package:vitamindeficiencydetection/models/doctros_appointment_model.dart';

class DoctorAppointmentController extends GetxController {
  var data = <DoctrosAppointmentModel>[].obs;
  var appointmentdetails = Rx<DoctrosAppointmentModel?>(null);

  @override
  void onInit() {
    super.onInit();
    getAppointmentDetail();
  }

  Future<void> getAppointmentDetail() async {
    
    // Ensure that getAppointmentDetails returns a list of AppointmentDetailsModel
    final repo = await DoctorRepository().getDoctorsAppointment();
    data.addAll(repo); // Add the list of appointment details to data
  }
}
