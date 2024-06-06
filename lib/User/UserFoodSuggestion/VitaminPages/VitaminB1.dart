import 'package:flutter/material.dart';

class VitaminB1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Suggestion'),
        backgroundColor: Color.fromARGB(255, 142, 166, 82),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Text('Vitamin B', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 30,),
              foodContainer(
                'assets/fruits.jpg',
                [
                  'Carrots', 'sweet potatoes', 'spinach' ,'kale',

                ],
              ),
              SizedBox(height: 20,),
              foodContainer(
                'assets/meat.jpg',
                [
                  'Beef liver, chicken liver',
                  'Salmon',
                  'Mackerel',
                ],
              ),
              SizedBox(height: 20,),
              foodContainer(
                'assets/vegetables.jpg',
                [
                  'Mangoes', 'apricots', 'cantaloupe'

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget foodContainer(String imagePath, List<String> points) {
    return Container(
      width: 400,
      height: 250,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(255, 142, 166, 82),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 160,
              height: 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: points.map((point) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    '• $point',
                    style: TextStyle(fontSize: 16),
                  ),
                )).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

  