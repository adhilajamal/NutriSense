import 'package:flutter/material.dart';

class ExpertHomeScreen extends StatelessWidget {
  const ExpertHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('NutriSense'),
        backgroundColor: Color.fromARGB(255, 142, 166, 82),
      ),
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/doctorhome.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(),
              child: Container(
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white.withOpacity(0.85),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text(
                    'Welcome Dr.Name\n\nKindly review your upcoming appointment at your earliest convenience:)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
