import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:vitamindeficiencydetection/EXPERT/signupexpert.dart';
import 'package:vitamindeficiencydetection/User/UserAppointment/controller/appointmentcontroller.dart';
import 'package:vitamindeficiencydetection/api/doctorsrepository.dart';
import 'package:vitamindeficiencydetection/doctor.dart';
import 'package:vitamindeficiencydetection/models/doctor_list_model.dart';


class UserAppointmentScreen extends GetView<AppointmentController> {
   UserAppointmentScreen({Key? key});

  
  // bool _isSearchClicked = false;
  // String _selectedLocation = '';
 
AppointmentController controller = Get.put(AppointmentController());
  
  DoctorRepository doctorRepository=DoctorRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointment Booking'),
        backgroundColor: Color.fromARGB(255, 142, 166, 82),
        automaticallyImplyLeading : false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Color.fromARGB(255, 142, 166, 82),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.white60,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: 'Search for Doctors',
                  prefixIcon: PopupMenuButton<String>(
                    itemBuilder: (BuildContext context) {
                      return <PopupMenuEntry<String>>[
                        PopupMenuItem<String>(
                          value: 'Calicut',
                          child: Text('Calicut'),
                        ),
                        PopupMenuItem<String>(
                          value: 'Kannur',
                          child: Text('Kannur'),
                        ),
                        PopupMenuItem<String>(
                          value: 'Malappuram',
                          child: Text('Malappuram'),
                        ),
                        PopupMenuItem<String>(
                          value: 'Thrissur',
                          child: Text('Thrissur'),
                        ),
                        PopupMenuItem<String>(
                          value: 'Ernakulam',
                          child: Text('Ernakulam'),
                        ),
                        PopupMenuItem<String>(
                          value: 'Thiruvananthapuram',
                          child: Text('Thiruvananthapuram'),
                        ),
                      ];
                    },
                    // onSelected: (String value) {
                    //   setState(() {
                    //     _selectedLocation = value;
                    //     _isSearchClicked = true;
                    //   });
                    // },
                    icon: Icon(Icons.location_on, color: Colors.white),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      // setState(() {
                      //   _isSearchClicked = true;
                      // });
                    },
                    icon: Icon(Icons.search, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
         SizedBox(height: 20,width: 20,),
         Expanded(
            child: Obx(() {
              var data = controller.doctors.value;
              return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){ 
                    controller.getDoctorsDetail(data[index].email.toString());
                    Navigator.pushNamed(context, 'doctordetails');
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                    ),
                  ),
                    child: ListTile(
                      title: Text(data[index].userName??''),
                      subtitle: Text(data[index].qualification??''),
                    ),
                  ),
                );
              },
            );
            })
          ),
           SizedBox(height: 20,),
          
        ],
      ),
    );
  }
}


  @override
  class DoctorCard extends StatelessWidget {
  // final String image;
  final String name;
  final String qualification;

  const DoctorCard({
    // required this.image,
    required this.name,
    required this.qualification,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Define the behavior when the doctor card is tapped
        print('Doctor $name tapped');
        Navigator.pushNamed(context, 'doctordetails');
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 142, 166, 82),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              // child: Image.asset(image, fit: BoxFit.cover),
            ),
            SizedBox(height: 10),
            Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(qualification),
          ],
        ),
      ),
    );
  }
}

doctorlist()async{
  var doctor =await DoctorRepository().getdoctorslist();
  return doctor?.doctors??[];
}
