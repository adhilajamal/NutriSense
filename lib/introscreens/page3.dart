import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image
        Positioned.fill(
          child: Image.asset(
            'assets/page3.jpg', 
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 340,
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
                left: 30,
                right: 10
              ),
              child: Text('             Connect with Experts \nSchedule consultations with healthcare professionals seamlessly through our booking system.'
,
              style: TextStyle(
                fontSize: 18,
                color: Colors.green.shade600,
              ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
