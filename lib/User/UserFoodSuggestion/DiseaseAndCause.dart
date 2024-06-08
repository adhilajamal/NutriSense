import 'package:flutter/material.dart';
import 'package:vitamindeficiencydetection/User/UserFoodSuggestion/SymptomAndCause/SymptomForA.dart';
import 'package:vitamindeficiencydetection/User/UserFoodSuggestion/SymptomAndCause/SymptomForB.dart';
import 'package:vitamindeficiencydetection/User/UserFoodSuggestion/SymptomAndCause/SymptomForC.dart';
import 'package:vitamindeficiencydetection/User/UserFoodSuggestion/SymptomAndCause/SymptomForD.dart';
import 'package:vitamindeficiencydetection/User/UserFoodSuggestion/SymptomAndCause/SymptomForE.dart';
import 'package:vitamindeficiencydetection/User/UserFoodSuggestion/SymptomAndCause/SymptomForK.dart';


class DiseaseCause extends StatelessWidget {
  
   DiseaseCause ({super.key});

  

 final List<String> vitaminDeficiencies = [
    'Vitamin A',
    'Vitamin B',
    'Vitamin C',
    'Vitamin D',
    'Vitamin E',
    'Vitamin K'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Food Suggestions'),
          backgroundColor: Color.fromARGB(255, 142, 166, 82),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: List.generate((vitaminDeficiencies.length / 2).ceil(), (index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _navigateToVitaminPage(context, vitaminDeficiencies[index * 2]);
                    },
                    child: Container(
                      width: 180,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                         color: Color.fromARGB(230, 140, 180, 182),
                      ),
                     
                      margin: EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          vitaminDeficiencies[index * 2],
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  if (index * 2 + 1 < vitaminDeficiencies.length)
                    GestureDetector(
                      onTap: () {
                        _navigateToVitaminPage(context, vitaminDeficiencies[index * 2 + 1]);
                      },
                      child: Container(
                        width: 180,
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                           color: Color.fromARGB(230, 140, 180, 182),
                        ),
                       
                        margin: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            vitaminDeficiencies[index * 2 + 1],
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }

  void _navigateToVitaminPage(BuildContext context, String vitamin) {
    Widget page;
    switch (vitamin) {
      case 'Vitamin A':
        page = VitaminASymp();
        break;
      case 'Vitamin B':
        page = VitaminBSymp();
      
      case 'Vitamin C':
        page = VitaminCSymp();
        break;
      case 'Vitamin D':
        page = VitaminDSymp();
        break;
      case 'Vitamin E':
        page = VitaminESymp();
        break;
      case 'Vitamin K':
        page = VitaminKSymp();
        break;
      default:
        page = DefaultVitaminPage(vitamin: vitamin);
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}

class DefaultVitaminPage extends StatelessWidget {
  final String vitamin;

  DefaultVitaminPage({required this.vitamin});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(vitamin),
      ),
      body: Center(
        child: Text(
          'Information about $vitamin',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}