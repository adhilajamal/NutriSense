import 'package:flutter/material.dart';
import 'package:vitamindeficiencydetection/EXPERT/ExpertAppointment/acceptedAppointmentScreen.dart';
import 'package:vitamindeficiencydetection/EXPERT/ExpertAppointment/expertappointmentscreen.dart';
// import 'package:vitamindeficiencydetection/EXPERT/ExpertAppointment/expertappointmentscreen.dart';
import 'package:vitamindeficiencydetection/EXPERT/ExpertChat/expertchatscreen.dart';
import 'package:vitamindeficiencydetection/EXPERT/ExpertProfile/expertprofilescreen.dart';
import 'package:vitamindeficiencydetection/EXPERT/ExpertHome/experthomescreen.dart';

class ExpertHomePage extends StatefulWidget {
  const ExpertHomePage({super.key});

  @override
  State<ExpertHomePage> createState() => _ExpertHomePageState();
}

class _ExpertHomePageState extends State<ExpertHomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    ExpertHomeScreen(),
    // ChatScreen(),
    ViewAppointmentScreen(),
    AcceptedAppointmentScreen(),
    ExpertProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(       
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          // BottomNavigationBarItem(
          //   icon: Icon(Icons.chat),
          //   label: 'Chat',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Appointments',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.event_available),
            label: 'Appointment List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}





