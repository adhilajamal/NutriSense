import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitamindeficiencydetection/User/UserAppointment/controller/appointmentdetailscontroller.dart';
import 'package:vitamindeficiencydetection/api/doctorsrepository.dart';

class UserViewAppointment extends GetView<AppointmentDetailsController> {
   UserViewAppointment({super.key});

  AppointmentDetailsController controller = Get.put(AppointmentDetailsController());
 

  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      itemBuilder: (context ,index){
          return Card(
          color: Color.fromARGB(255, 137, 162, 73),
          child: Column(
              children: [
                ListTile(
                  title: Text(
                    appointmentData[index].drName.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Column(
                    children: [
                      Text(
                        appointmentData[index].date.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        appointmentData[index].staus.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  leading: Icon(
                    Icons.event_available,
                    color: Colors.white,
                  ),
                  trailing: Text(
                    appointmentData[index].time.toString(),
                    style: TextStyle(color: Colors.white),
                 ),
                    ),
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