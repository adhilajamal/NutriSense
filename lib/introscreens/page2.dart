
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image
        Positioned.fill(
          child: Image.asset(
            'assets/page1 .jpg', 
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 320,
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
                left: 20,
                right: 20
              ),
              child: Text('Detect Deficiencies and Stay On Track  \n     Personalized Vitamin Analysis,   Reminders and Recommendations' ,
              style: TextStyle(
                fontSize: 17,
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
