import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:intl/intl.dart';
import 'package:vitamindeficiencydetection/User/UserAppointment/controller/appointmentcontroller.dart';

class UserBookNow extends StatefulWidget {

 UserBookNow({super.key,required this.dr_name});
  final String dr_name;

  @override
  State<UserBookNow> createState() => _UserBookNowState();
}

class _UserBookNowState extends State<UserBookNow> {
  final controller = Get.put(AppointmentController());

  
  // DateTime _dateTime = DateTime.now();
  // TimeOfDay _selectedTime = TimeOfDay.now();
  // final DateFormat _dateFormat = DateFormat('dd-MM-yyyy');
  // final DateFormat _timeFormat = DateFormat('h:mm');
  // void _showDatePicker() async {
  //   final DateTime? picked = await showDatePicker(
  //     context: context,
  //     initialDate: _dateTime,
  //     firstDate: DateTime(2000),
  //     lastDate: DateTime(2050),
  //   );
  //   if (picked != null && picked != _dateTime) {
  //     setState(() {
  //       _dateTime = picked;
  //     });
  //   }
  // }
  // Future<void> _showTimePicker() async {
  //   final TimeOfDay? picked = await showTimePicker(
  //     context: context,
  //     initialTime: _selectedTime,
  //   );
  //   if (picked != null && picked != _selectedTime) {
  //     setState(() {
  //       _selectedTime = picked;
  //     });
  //   }
  // }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.dr_name,),
        backgroundColor: Color.fromARGB(255, 142, 166, 82),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              onTap: () => controller.selectDate(context),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.green),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.green
                  )
                ),
                hintText: 'Select Date',
                
                
              ),
               controller: controller.dateController,
              //  TextEditingController(
              //   text: _dateFormat.format(_dateTime),
              // ),
              readOnly: true,
            ),
            SizedBox(height: 20,),
             TextField(
              onTap: () => controller.selectTime(context),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.green)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.green
                  )
                ),
                hintText: 'Select Time',
              ),
             controller: controller.timeController,
            //  TextEditingController(
            //     text: _selectedTime.format(context),
            //   ),
              readOnly: true,
            ),
             SizedBox(height: 20,),
             TextField(
              controller: controller.patientNameController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.green)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.green
                  )
                ),
                hintText: 'Full Name',
              ),
            ),
             SizedBox(height: 20,),
             TextField(
              controller: controller.placeController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.green)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.green
                  )
                ),
                hintText: 'Place',
              ),
            ),
             SizedBox(height: 20,),
             TextField(
              controller: controller.contactNumberController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.green)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.green
                  )
                ),
                hintText: 'Mobile Number',
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              controller.makeAppointment();
              // Navigator.pushNamed(context, 'userviewappointment');
            }, 
             
             style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 142, 166, 82),),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              )),
              fixedSize: MaterialStateProperty.all<Size>(Size(240,40))
             ),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text('Make an appointment',style: TextStyle(fontSize: 16),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Icon(Icons.arrow_forward_ios),
              )
            ],
           ),
            )
          ],
        ),
      ),
    );
 }
}