import 'package:flutter/material.dart';

class ExpertHomeScreen extends StatelessWidget {
  const ExpertHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NutriSense'),
        backgroundColor: Color.fromARGB(255, 142, 166, 82),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Image.asset('assets/doctorhome.jpg'),
            )
          ],
        ),
      ),
    );
  }
}