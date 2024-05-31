import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        centerTitle: true,
        backgroundColor:  Color.fromARGB(255, 142, 166, 82),
      ),
      body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text('Welcome to NutriSense',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 142, 166, 82),
                fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Text('NutriSense is your personal nutrition companion, designed to help you achieve your health and wellness goals through data-driven insights and tailored recommendations.'),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 10,right: 280),
              child: Text('Key Features',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 142, 166, 82),
                fontWeight: FontWeight.bold,
              ),),
            ),
          SizedBox(height: 8),
        BulletPoint(text: 'Vitamin Deficiency Detection'),
        BulletPoint(text: 'Personalized Nutrition Plans'),
        BulletPoint(text: 'Food Suggestions'),
        BulletPoint(text: 'Expert Guidance'),
        BulletPoint(text: 'Appointment Booking'),
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.only(right: 300),
          child: Text(
            'Our Mission',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Color.fromARGB(255, 142, 166, 82),),
          ),
        ),
        SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Text(
            'We aim to simplify nutrition, making it accessible and actionable for everyone. Empower yourself with NutriSense to make informed dietary choices for a healthier life.',
          ),
        ),
        SizedBox(height: 16),
       
       
      ],
      )
    );
  }
}

class BulletPoint extends StatelessWidget {
  final String text;

  BulletPoint({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("• ", style: TextStyle(fontSize: 18)),
        Expanded(
          child: Text(text, style: TextStyle(fontSize: 15)),
        ),
      ],
    );
  }
}