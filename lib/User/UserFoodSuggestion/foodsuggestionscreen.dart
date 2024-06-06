import 'package:flutter/material.dart';
import 'package:vitamindeficiencydetection/User/UserFoodSuggestion/VitaminPages/VitaminB1.dart';
import 'package:vitamindeficiencydetection/User/UserFoodSuggestion/VitaminPages/VitaminB12.dart';
import 'package:vitamindeficiencydetection/User/UserFoodSuggestion/VitaminPages/VitaminB2.dart';
import 'package:vitamindeficiencydetection/User/UserFoodSuggestion/VitaminPages/VitaminB3.dart';
import 'package:vitamindeficiencydetection/User/UserFoodSuggestion/VitaminPages/VitaminB5.dart';
import 'package:vitamindeficiencydetection/User/UserFoodSuggestion/VitaminPages/VitaminB6.dart';
import 'package:vitamindeficiencydetection/User/UserFoodSuggestion/VitaminPages/VitaminB7.dart';
import 'package:vitamindeficiencydetection/User/UserFoodSuggestion/VitaminPages/VitaminB9.dart';
import 'package:vitamindeficiencydetection/User/UserFoodSuggestion/VitaminPages/VitaminC.dart';
import 'package:vitamindeficiencydetection/User/UserFoodSuggestion/VitaminPages/VitaminD.dart';
import 'package:vitamindeficiencydetection/User/UserFoodSuggestion/VitaminPages/VitaminE.dart';
import 'package:vitamindeficiencydetection/User/UserFoodSuggestion/VitaminPages/VitaminK.dart';
import 'package:vitamindeficiencydetection/User/UserFoodSuggestion/VitaminPages/vitaminA.dart';

class FoodSuggestionScreen extends StatelessWidget {
  
   FoodSuggestionScreen ({super.key});

  

 final List<String> vitaminDeficiencies = [
    'Vitamin A',
    'Vitamin B1',
    'Vitamin B2',
    'Vitamin B3',
    'Vitamin B5',
    'Vitamin B6',
    'Vitamin B7',
    'Vitamin B9',
    'Vitamin B12',
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
        page = VitaminAPage();
        break;
      case 'Vitamin B1':
        page = VitaminB1Page();
        break;
      case 'Vitamin B2':
        page = VitaminB2Page();
        break;
      case 'Vitamin B3':
        page = VitaminB3Page();
        break;
      case 'Vitamin B5':
        page = VitaminB5Page();
        break;
      case 'Vitamin B6':
        page = VitaminB6Page();
        break;
      case 'Vitamin B7':
        page = VitaminB7Page();
        break;
      case 'Vitamin B9':
        page = VitaminB9Page();
        break;
      case 'Vitamin B12':
        page = VitaminB12Page();
        break;
      case 'Vitamin C':
        page = VitaminCPage();
        break;
      case 'Vitamin D':
        page = VitaminDPage();
        break;
      case 'Vitamin E':
        page = VitaminEPage();
        break;
      case 'Vitamin K':
        page = VitaminKPage();
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