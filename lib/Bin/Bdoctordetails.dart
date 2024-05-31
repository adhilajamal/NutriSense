// import 'package:flutter/material.dart';

// class DoctorDetails extends StatefulWidget {
//   const DoctorDetails({super.key});

//   @override
//   State<DoctorDetails> createState() => _DoctorDetailsState();
// }

// class _DoctorDetailsState extends State<DoctorDetails> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Doctor Details'),
//         backgroundColor: Color.fromARGB(255, 142, 166, 82),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 30,left: 5,right: 5),
//               child: Container(
//                 height: 150,
//                 width: 500,
//                 decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 142, 166, 82),
//                   borderRadius: BorderRadius.circular(10)
//                 ),
//               child: Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 10,top: 10,bottom: 10),
//                     child: Container(height: 150,width: 120,
//                     decoration: BoxDecoration(color: Colors.green.shade100,borderRadius: BorderRadius.circular(10)),
//                     ),
//                   ),
//                   Column(
//                     children: [
//                        Padding(
//                         padding: const EdgeInsets.only(top: 30,left: 15),
//                         child: Text('Dr.Alice Joseph',style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 17,
//                       ),
//                      ),
//                    ),
//                    Padding(
//                      padding: const EdgeInsets.only(left: 5,right: 40,top: 5),
//                      child: Text('MBBS MD',style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ),
//                    ],
//                   )
//                 ],
//               ),
//              ),
//             ),
//             SizedBox(height: 20,),
//             Container(
//               height: 1000,
//               width: 400,
//               decoration: BoxDecoration(
//                 color: Colors.green.withOpacity(0.2),
//                 borderRadius: BorderRadius.circular(10)
//               ),
//               child: Column(
//                 children: [
//                  SizedBox(height: 20,),
                
//                 Padding(
//                   padding: const EdgeInsets.only(top: 20,right: 280),
//                   child: Text('About',
//                   style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,
//                   fontSize: 25),),
//                 ),
//                 SizedBox(height: 10,),
                
//             Padding(
//               padding: const EdgeInsets.only(left: 10,right: 10),
//               child: Text(
//                 ' "As a nutritionist, I believe in taking a holistic approach to patient care, recognizing that food is not only fuel for the body but also plays a crucial role in overall health and vitality. My philosophy is centered on empowering individuals to cultivate a positive relationship with food, embracing a balanced and varied diet that nourishes both the body and the mind."',
//                 style: TextStyle(
//                   fontStyle: FontStyle.italic,
//                 ),
//               ),
//             ),
//             SizedBox(height: 20,),
//             //  Row(
//             //       children: [
//             //         Padding(
//             //           padding: EdgeInsets.only(left: 20),
//             //           child: Icon(Icons.phone,color: Colors.blue,),
//             //           ),
//             //         Padding(
//             //           padding: const EdgeInsets.only(left: 10),
//             //           child: Text('Contact Number : 9037596328',
//             //             style: TextStyle(
//             //                fontSize: 15            
//             //                          ),),
//             //         )
//             //       ],
//             //      ),
//              Padding(padding: EdgeInsets.only(top: 20),
//             child: Padding(
//               padding: const EdgeInsets.only(top: 20),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 10),
//                 child: Row(
//                   children: [
//                     Icon(Icons.phone,color: Colors.blue,size: 25,),
//                     SizedBox(width: 5,),
//                     Text('9037596328')
//                   ],
//                 ),
//               ),
//             ),),
//             Padding(padding: EdgeInsets.only(top: 20),
//             child: Padding(
//               padding: const EdgeInsets.only(top: 20),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 10),
//                 child: Row(
//                   children: [
//                     Icon(Icons.location_on,color: Colors.blue,size: 25,),
//                     SizedBox(width: 5,),
//                     Text('Pullupalam Road, Opp Jain Temple, Mattancherry,\n Kochi, Kerala 682002')
//                   ],
//                 ),
//               ),
//             ),),
//             Padding(padding: EdgeInsets.only(top: 20),
//             child: Padding(
//               padding: const EdgeInsets.only(top: 20),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 10),
//                 child: Row(
//                   children: [
//                     Icon(Icons.access_time,color: Colors.blue,size: 25,),
//                     SizedBox(width: 5,),
//                     Text('9 AM-6:00 PM')
//                   ],
//                 ),
//               ),
//             ),),
//             SizedBox(height: 20,),
//             ElevatedButton(onPressed: () {
//               Navigator.pushNamed(context, 'userbooknow');
//             }, 
             
//              style: ButtonStyle(
//               backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 142, 166, 82),),
//               shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(30)
//               )),
//               fixedSize: MaterialStateProperty.all<Size>(Size(220,40))
//              ),
//             child: Row(children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 50),
//                 child: Text('Book Now',style: TextStyle(fontSize: 16),),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 35),
//                 child: Icon(Icons.arrow_forward_ios),
//               )
//             ],))
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }