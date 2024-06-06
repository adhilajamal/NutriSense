import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitamindeficiencydetection/User/UserAppointment/controller/appointmentcontroller.dart';
import 'package:vitamindeficiencydetection/User/UserAppointment/userbooknow.dart';


class DoctorDetails extends StatelessWidget {
   DoctorDetails({super.key});
  
  AppointmentController controller = Get.put(AppointmentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Details'),
        backgroundColor: Color.fromARGB(255, 142, 166, 82),
      ),
      body: SingleChildScrollView(
        child: Obx(() {
          var doctordata = controller.doctordetails.value;
          return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 5,right: 5),
              child: Container(
                height: 150,
                width: 500,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 142, 166, 82),
                  borderRadius: BorderRadius.circular(10)
                ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10,bottom: 10),
                    child: Container(height: 150,width: 120,
                    decoration: BoxDecoration(color: Colors.green.shade100,borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Column(
                    children: [
                       Padding(
                        padding: const EdgeInsets.only(top: 30,left: 15),
                        child: Text(doctordata?.userName?.toString()??'',style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 5,right: 40,top: 5),
                     child: Text(doctordata?.qualification?.toString()??'',style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                   ],
                  )
                ],
              ),
             ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 1000,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                 SizedBox(height: 20,),
                
                Padding(
                  padding: const EdgeInsets.only(top: 20,right: 280),
                  child: Text('About',
                  style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,
                  fontSize: 25),),
                ),
                SizedBox(height: 10,),
                
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Text(
                doctordata?.about?.toString()??'',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(height: 20,),
            //  Row(
            //       children: [
            //         Padding(
            //           padding: EdgeInsets.only(left: 20),
            //           child: Icon(Icons.phone,color: Colors.blue,),
            //           ),
            //         Padding(
            //           padding: const EdgeInsets.only(left: 10),
            //           child: Text('Contact Number : 9037596328',
            //             style: TextStyle(
            //                fontSize: 15            
            //                          ),),
            //         )
            //       ],
            //      ),
             Padding(padding: EdgeInsets.only(top: 20),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Icon(Icons.phone,color: Colors.blue,size: 25,),
                    SizedBox(width: 5,),
                    Text(doctordata?.contact?.toString()??'')
                  ],
                ),
              ),
            ),),
            Padding(padding: EdgeInsets.only(top: 20),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Icon(Icons.location_on,color: Colors.blue,size: 25,),
                    SizedBox(width: 5,),
                    Text(doctordata?.address?.toString()??'')
                  ],
                ),
              ),
            ),),
            Padding(padding: EdgeInsets.only(top: 20),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Icon(Icons.access_time,color: Colors.blue,size: 25,),
                    SizedBox(width: 5,),
                    Text(doctordata?.workingtime?.toString()??'')
                  ],
                ),
              ),
            ),),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => UserBookNow(dr_name:doctordata?.userName?.toString()??'' ) ));
            }, 
             
             style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 142, 166, 82),),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              )),
              fixedSize: MaterialStateProperty.all<Size>(Size(220,40))
             ),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text('Book Now',style: TextStyle(fontSize: 16),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Icon(Icons.arrow_forward_ios),
              )
            ],))
                ],
              ),
            ),
          ],
        );
        })
      ),
    );
  }
}