import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notification Toggle',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UserSettings(),
    );
  }
}

class UserSettings extends StatefulWidget {
  @override
  _UserSettingsState createState() => _UserSettingsState();
}

class _UserSettingsState extends State<UserSettings> {
  bool _isNotificationEnabled = false;

  void _toggleNotification(bool value) {
    setState(() {
      _isNotificationEnabled = value;
      // Here you can add logic to enable/disable notifications
      // For simplicity, we'll just print a message.
      if (_isNotificationEnabled) {
        print('Notifications enabled');
      } else {
        print('Notifications disabled');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 142, 166, 82),
        title: Text('Settings'),
      ),
       body: Row(
        children:[ 
          Padding(
            padding: const EdgeInsets.only(left: 8,top: 10),
            child: Text('Enable Notification',
            style: TextStyle(
              fontSize: 18
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 185 ,top: 10),
            child: Switch(
            value: _isNotificationEnabled,
            onChanged: _toggleNotification,
            focusColor: Colors.white,
            activeColor: Colors.green,
                  ),
          ),
      ],
     ),
    );
  }
}