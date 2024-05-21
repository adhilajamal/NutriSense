import 'package:flutter/material.dart';

class FoodSuggestionScreen extends StatefulWidget {
  const FoodSuggestionScreen ({super.key});

  @override
  State<FoodSuggestionScreen > createState() => _FoodSuggestionScreenState();
}

class _FoodSuggestionScreenState extends State<FoodSuggestionScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
  appBar: AppBar(
    title: Text('Food Suggestions'),
    centerTitle: true,
    backgroundColor: Color.fromARGB(255, 142, 166, 82),
  ),
  
);

  }
}
  