import 'package:flutter/material.dart';

class UserViewAppointment extends StatelessWidget {
  const UserViewAppointment({super.key});

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
    child: ListView(
      children: [
        Card(
          color: Color.fromARGB(255, 137, 162, 73),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Dr.Alice Joseph',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  '18-04-2024',
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(
                  Icons.event_available,
                  color: Colors.white,
                ),
                trailing: Text(
                  '5:00pm',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              
            ],
          ),
        ),
      ],
      ),
  )
  
    );
  }
}