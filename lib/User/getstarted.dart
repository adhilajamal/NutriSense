import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vitamindeficiencydetection/User/UserHome/homepage.dart';
import 'package:vitamindeficiencydetection/introscreens/page1.dart';
import 'package:vitamindeficiencydetection/introscreens/page2.dart';
import 'package:vitamindeficiencydetection/introscreens/page3.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  // controller which track of which page we are
  PageController _controller = PageController();

  //keep track of if we are on the last page or not
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        PageView(
          controller: _controller,
          onPageChanged: (index){
            setState(() {
              onLastPage = (index == 2);
            });
          },
        children: [
         Page1(),
         Page2(),
         Page3(),
        ],
      ),
      //dot indicator
      Container(
        alignment: Alignment(0,0.75),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             GestureDetector(
              onTap: () {
                _controller.jumpToPage(2);
              },
              child: Text('Skip',
              style: TextStyle(
                color: Colors.green,
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),)),
            SmoothPageIndicator(controller: _controller,count: 3),
            onLastPage 
           ? GestureDetector(
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(
                  builder: (context){
                    return HomePage();
                  },
                ),
              );
            },
              child: Text('Get Started',
              style: TextStyle(
                fontSize: 15,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),),
              )
              : GestureDetector(
              onTap: () {
                _controller.nextPage(
                  duration: Duration(milliseconds: 500),
                   curve: Curves.easeIn,
                   );
              },
              child: Text('Next',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold
              ),),
              ),
          ],
        ))
     ],
    ),
   );
  }
}