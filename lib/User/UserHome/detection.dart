import 'package:flutter/material.dart';

class Detection extends StatefulWidget {
  const Detection({super.key});

  @override
  State<Detection> createState() => _DetectionState();
}

class _DetectionState extends State<Detection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //App Bar
        appBar:  AppBar(
          title: const Text('NutriSense'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 142, 166, 82),
         
          
         
          elevation: 50,
        ),
    );
  }
}