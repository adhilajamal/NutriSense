import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'api/login.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  void Login()async{ 
    final String email = emailController.text;
    final String password = passwordController.text;
    if(email.isNotEmpty && password.isNotEmpty){
      final data = await LoginUser.fetchDataFromAPI(email.toString(),password.toString());
      print(data.toString());
      if (data['statusCode']==403){
         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("user not verified"),
       ),
    );
      }
      if(data['statusCode']==200){
         final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
         final SharedPreferences prefs = await _prefs;
         prefs.setString('email', data['email']);

        if(data['body'].toString()=='Patient'){
          Navigator.pushNamed(context, 'homepage');
        }
        else if(data['body'].toString()=='Doctor'){

          Navigator.pushNamed(context, 'experthomepage');
        }
      }
      else if(data['statusCode']==401){
         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Incorrect Password"),
       ),
     );
      }
      else if(data['statusCode']==404){
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("User not Found"),
       ),
     );
        
     }
    }
    else
     {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
     content: Text("Missing of essential data"),
    ),
  );
     }
  } 
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/login.png'), fit: BoxFit.cover
          ),
            
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            
            Container(
              padding: EdgeInsets.only(
               left: 170,
               top: 280,
               bottom: 50,
               right: 140,
               ),
              child: Text(
                'LOGIN',
                style: TextStyle(
                  color: Colors.black,
                   fontSize: 30,
                   fontStyle: FontStyle.normal),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: 350),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Email",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                                controller: emailController,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style: TextStyle(),
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                                controller: passwordController,
                          ),
                           SizedBox(
                            height: 30,
                          ),
                         
                          SizedBox(
                            height: 40,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            
                            children: [ 
                               ElevatedButton(
                                    onPressed: () {
                                      
                                  Login();
                                },
                                       // Add your login logic here
                                    
                                child: Text('Login'),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.green),
                                  padding: MaterialStateProperty.all(
                                    EdgeInsets.only(
                                      left: 45,
                                      right:45,
                                      top: 10,
                                      bottom: 10

                                    ),
                                  ),
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    
                                  )),
                                ),
                           ), 
                               TextButton(
                                  onPressed: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(.0),
                                    child: Text(
                                      'Forgot Password?',
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.green.shade900,
                                        fontSize: 14,
                                    ),
                                  ),
                                 ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Dont have an Account?',
                              style: TextStyle(
                                color: Colors.green.shade900,
                              ),
                              ),
                              TextButton(
                                onPressed: () {
                                   Navigator.pushNamed(context, 'signupoption');
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Text(
                                    'Sign Up',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.green.shade900,
                                        fontSize: 18),
                                  ),
                                ),
                                style: ButtonStyle(),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}