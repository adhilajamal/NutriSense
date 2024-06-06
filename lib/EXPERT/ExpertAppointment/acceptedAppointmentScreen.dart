import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitamindeficiencydetection/EXPERT/ExpertAppointment/controller/doctorAppointmentController.dart';
import 'package:vitamindeficiencydetection/User/UserAppointment/controller/appointmentdetailscontroller.dart';
import 'package:vitamindeficiencydetection/api/doctorsrepository.dart';

class AcceptedAppointmentScreen extends GetView<DoctorAppointmentController> {
  AcceptedAppointmentScreen({super.key});

  final DoctorAppointmentController controller = Get.put(DoctorAppointmentController());

  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Appointments'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 142, 166, 82),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Obx(() {
          final appointmentData = controller.data.value;
          return ListView.builder(
            itemCount: appointmentData.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        appointmentData[index].patientName.toString(),
                        style: TextStyle(color: Colors.grey.shade900),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            appointmentData[index].place.toString(),
                            style: TextStyle(color: Colors.grey.shade800),
                          ),
                           Text(
                            appointmentData[index].date.toString(),
                            style: TextStyle(color: Colors.grey.shade800),
                          ),
                         
                        ],
                      ),
                      leading: Icon(
                        Icons.event_available,
                        color: Color.fromARGB(255, 142, 166, 82),
                      ),
                      trailing: Text(
                        appointmentData[index].time.toString(),
                        style: TextStyle(color: Colors.grey.shade800),
                      ),
                    ),
                   
                    SizedBox(height: 15),
                  ],
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
