// import 'dart:js';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:vitamindeficiencydetection/EXPERT/ExpertProfile/expertprofilescreen.dart';
import 'package:vitamindeficiencydetection/User/UserAppointment/doctordetails.dart';
import 'package:vitamindeficiencydetection/User/UserAppointment/userviewappointment.dart';
// ignore: unused_import
import 'package:vitamindeficiencydetection/User/UserFoodSuggestion/foodsuggestionscreen.dart';
import 'package:vitamindeficiencydetection/User/UserHome/homepage.dart';
import 'package:vitamindeficiencydetection/login.dart';
import 'package:vitamindeficiencydetection/signupoption.dart';
import 'package:vitamindeficiencydetection/User/signupuser.dart';
import 'package:vitamindeficiencydetection/EXPERT/signupexpert.dart';
import 'package:vitamindeficiencydetection/User/getstarted.dart';
import 'package:vitamindeficiencydetection/User/UserHome/imageupload.dart';
import 'package:vitamindeficiencydetection/User/UserHome/detection.dart';
import 'package:vitamindeficiencydetection/EXPERT/ExpertHome/experthomepage.dart';
import 'package:vitamindeficiencydetection/User/UserReminder/addpill.dart';
import 'package:vitamindeficiencydetection/User/UserAppointment/userbooknow.dart';

import 'package:vitamindeficiencydetection/User/UserChat/userchatwithdoctor.dart';
import 'package:vitamindeficiencydetection/User/UserProfile/userprofilescreenNav/userchangepassword.dart';
import 'package:vitamindeficiencydetection/User/UserProfile/userprofilescreenNav/usersettings.dart';
// ignore: duplicate_import
import 'package:vitamindeficiencydetection/User/UserAppointment/doctordetails.dart';
// ignore: duplicate_import
import 'package:vitamindeficiencydetection/User/UserAppointment/userbooknow.dart';
// import 'package:vitamindeficiencydetection/User/UserChat/chatscreendoctordetails.dart';
// // ignore: duplicate_import
// import 'package:vitamindeficiencydetection/userchatscreen.dart';
import 'package:vitamindeficiencydetection/EXPERT/ExpertProfile/expertprofilescreen.dart';
import 'package:vitamindeficiencydetection/EXPERT/ExpertProfile/expertchangepassword.dart';
import 'package:vitamindeficiencydetection/EXPERT/ExpertProfile/expertsettings.dart';
import 'package:vitamindeficiencydetection/User/UserAppointment/userviewappointment.dart';
import 'package:vitamindeficiencydetection/User/UserProfile/userprofilescreenNav/userabout.dart';




void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'login'                     :(context) => MyLogin(),
      'signupoption'              :(context) => SignUpOptionPage(),
      'signupuser'                :(context) => SignUpUser(),
      'signupexpert'              :(context) => SignUpExpert(),
      'homepage'                  :(context) => HomePage(),
      'getstarted'                :(context) => GetStarted(),
      'imageupload'               :(context) => ImageUpload(),
      'detection'                 :(context) => Detection(),
      'experthomepage'            :(context) => ExpertHomePage(),
      'addpill'                   :(context) => AddPill(),
      'userchangepassword'        :(context) => UserChangePassword(),
      'usersettings'              :(context) => UserSettings(),
      'userchatwithdoctor'        :(context) => ChatScreen(),
      'doctordetails'             :(context) => DoctorDetails(),
      // 'userbooknow'               :(context) => UserBookNow(dr_name: ,),
      // 'chatscreendoctordetails'   : (context) => ChatScreenDoctorDetails(),
      //   '/': (context) => HomeScreen(),
      //   'userchatscreen': (context) {
      //     final args = ModalRoute.of(context)!.settings.arguments as ChatPageArguments;
      //     return ChatPage(name: args.name);
      //   },
      'expertprofilescreen'     :(context) => ExpertProfileScreen(),
      'expertchangepassword'    :(context) => ExpertChangePassword(),
      'expertsettings'          :(context) => ExpertSettings(),
      'userviewappointment'     :(context) => UserViewAppointment(),
      'userabout'               :(context) => UserProfile(),
       
      

    },
  ));
}





