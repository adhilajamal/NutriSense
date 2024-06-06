import 'package:flutter/material.dart';
import 'package:vitamindeficiencydetection/User/UserHome/homescreen.dart';
// import 'package:vitamindeficiencydetection/addpill.dart';
import 'package:vitamindeficiencydetection/User/UserProfile/userprofilescreen.dart';
import 'package:vitamindeficiencydetection/User/UserReminder/reminderscreen.dart';
import 'package:vitamindeficiencydetection/User/UserFoodSuggestion/foodsuggestionscreen.dart';
import 'package:vitamindeficiencydetection/User/UserAppointment/userappointmentscreen.dart';
import 'package:vitamindeficiencydetection/models/patient_profile_model.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key,re});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  late String email;
  final List<Widget> _children = [
    HomeScreen(),
    // ReminderScreen(),
    FoodSuggestionScreen(),
    UserAppointmentScreen(),
    ProfileScreen(),
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
          //   icon: Icon(Icons.medication),
          //   label: 'Pill Reminder',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: 'Food Suggestion',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_note),
            label: 'Appointment',
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





    

// class FoodSuggestionScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Food Suggestion Screen'),
//     );
//   }
// }

