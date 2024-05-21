import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image
        Positioned.fill(
          child: Image.asset(
            'assets/page2.jpg', 
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 350,
            right: 10,
            left: 10,
          ),
          child: Container(
            width: 400,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white.withOpacity(0.85),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 65,
                left: 40,
                right: 50
              ),
              child: Text('       Welcome to NutriSense! \n Your Ultimate Health Companion'
,
              style: TextStyle(
                fontSize: 18,
                color: Colors.green.shade600,
              ),
              ),
            ),
          ),
        ),
       
      ],
    );
  }
}
