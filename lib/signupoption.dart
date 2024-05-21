import 'package:flutter/material.dart';
import 'package:vitamindeficiencydetection/User/signupuser.dart';
import 'package:vitamindeficiencydetection/EXPERT/signupexpert.dart';


class SignUpOptionPage extends StatelessWidget {
  const SignUpOptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              //App Bar
              appBar: AppBar(
          title: Text('NutriSense'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 142, 166, 82),
        ),
        body: Center(
           child:Padding(
             padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 50,
              top: 200
              
             ),
             child: Column(
              children: [
                const Text('Sign Up as:',
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.normal,
                  color: Colors.green,
                ),
                ),
              
               Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.green[200],
                    child: CircleAvatar(
                      radius: 69,
                      backgroundImage: AssetImage('assets/user.jpg'),
                      child: ListTile(
                      onTap: () {
            // Navigate to the second page when tapped
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpUser()),
            );
          },
                      
              ),
            ),
          ),
        ),
                     
                CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.green[200],
                  child: CircleAvatar(
                    radius: 69,
                    backgroundImage: AssetImage('assets/expert.jpg'),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=> SignUpExpert()),
                        );
                      },
                    ),
                  ),
                ),
              ],
             ),
             
             Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(
                    left: 107
                  ),
                  child: Text('User',
                  style: TextStyle(
                    color: Colors.green
                  ),
                ),
              ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 115
                  ),
                  child: Text("Expert",
                   style: TextStyle(
                    color: Colors.green
                  ),
                  ),
                )
              ],
             )
             
           ],
           
          ),
        ),
      ),
      
    );
    
  }
}