import 'package:flutter/material.dart';

class ReminderScreen extends StatefulWidget {
  const ReminderScreen({super.key});

  @override
  State<ReminderScreen> createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
  appBar: AppBar(
    title: Text('Remind Me'),
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
                  'Diosmiplex',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  '1 Capsule',
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(
                  Icons.medication_outlined,
                  color: Colors.white,
                ),
                trailing: Text(
                  '8:00pm',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              
            ],
          ),
        ),
        Card(
          color: Color.fromARGB(255, 142, 166, 82),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Diosmiplex',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  '1 Capsule',
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(
                  Icons.medication_outlined,
                  color: Colors.white,
                ),
                trailing: Text(
                  '8:00pm',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              
            ],
          ),
        ),
        Card(
          color: Color.fromARGB(255, 142, 166, 82),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Diosmiplex',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  '1 Capsule',
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(
                  Icons.medication_outlined,
                  color: Colors.white,
                ),
                trailing: Text(
                  '8:00pm',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              
            ],
          ),
        ),
        Card(
          color: Color.fromARGB(255, 142, 166, 82),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Diosmiplex',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  '1 Capsule',
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(
                  Icons.medication_outlined,
                  color: Colors.white,
                ),
                trailing: Text(
                  '8:00pm',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              
            ],
          ),
        ),
      ],
      
      
    ),
  ),
  floatingActionButton: FloatingActionButton(
    onPressed: () {
      Navigator.pushNamed(context, 'addpill');
    },
    child: Icon(Icons.add),
    backgroundColor: Color.fromARGB(255, 142, 166, 82),
  ),
);

  }
}
  