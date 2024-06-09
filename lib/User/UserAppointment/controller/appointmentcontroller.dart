import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
// import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vitamindeficiencydetection/User/UserProfile/controller/patientProfileController.dart';
import 'package:vitamindeficiencydetection/api/doctorsrepository.dart';
import 'package:vitamindeficiencydetection/models/doctor_details_model.dart';
import 'package:vitamindeficiencydetection/models/doctor_list_model.dart';

class AppointmentController extends GetxController{
  var doctors = <Doctors>[].obs;
  var doctordetails = Rx<DoctorDetailsModel?>(null);
  final PatientProfileController controller = Get.put(PatientProfileController());
  TextEditingController patientNameController = TextEditingController(); 
  TextEditingController placeController = TextEditingController(); 
  TextEditingController dateController = TextEditingController(); 
  TextEditingController timeController = TextEditingController(); 
  TextEditingController contactNumberController = TextEditingController(); 
  TextEditingController districtSearch = TextEditingController(); 
  TextEditingController nameSearch = TextEditingController(); 
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getDoctors();
  }
  Future <void> getDoctors()async{
    final repo = await DoctorRepository().getdoctorslist(districtSearch.text.toString(), nameSearch.text.toString());
    doctors.value = repo?.doctors??[];
  }
  Future <void> getDoctorsDetail(String email)async{
    final repo = await DoctorRepository().getdoctordetails(email);
    doctordetails.value = repo;
  }
  Future <void> makeAppointment()async{
  var profiledata = controller.patientdetails.value;
  
    final repo = await DoctorRepository().makeAppointment(
      dr_email: doctordetails.value?.email??'',
      dr_name: doctordetails.value?.userName??'', 
      patient_name: patientNameController.text,
      patient_email: controller.patientdetails.value?.email??'',
      place: placeController.text,
      date: dateController.text,
      time: timeController.text,
      district: doctordetails.value?.district??'',
      contactNo: contactNumberController.text);
  }
  Future<void> selectDate(BuildContext context) async {
  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(1900),
    lastDate: DateTime(2050),
  );
  
  if (picked != null) {
    dateController.text =
        picked.toLocal().toString().split(' ')[0];
  }
}
 Future<void> selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (picked != null) {
      final now = DateTime.now();
      final selectedTime = DateTime(now.year, now.month, now.day, picked.hour, picked.minute);
      final formattedTime = DateFormat('HH:mm').format(selectedTime); // Format to 24-hour time
      timeController.text = formattedTime;
    }
  }
}