import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:vitamindeficiencydetection/api/expertregistration.dart';

class SignUpExpert extends StatefulWidget {
  const SignUpExpert({super.key});

  @override
  State<SignUpExpert> createState() => _SignUpExpertState();
}

class _SignUpExpertState extends State<SignUpExpert> {
 final TextEditingController user_nameController = TextEditingController();
 final TextEditingController ageController = TextEditingController();
 final TextEditingController genderController = TextEditingController();
 final TextEditingController contactController = TextEditingController();
 final TextEditingController emailController = TextEditingController();
 final TextEditingController passwordController = TextEditingController();
 final TextEditingController confirmpasswordController = TextEditingController();
 final TextEditingController aboutControler = TextEditingController();
 final TextEditingController addressControler = TextEditingController();
 final TextEditingController districtControler = TextEditingController();
 final TextEditingController workingtimeControler = TextEditingController();
 final TextEditingController qualificationControler = TextEditingController();
 final TextEditingController proofControler = TextEditingController();
 

 void expertregistration(BuildContext context) async {
    final String user_name = user_nameController.text;
    final String age = ageController.text;
    final String gender = genderController.text;
    final String contact = contactController.text;
    final String email = emailController.text;
    final String password = passwordController.text;
    final String confirmpassword = confirmpasswordController.text;
    final String about = aboutControler.text;
    final String address = addressControler.text;
    final String district = districtControler.text;
    final String workingtime = workingtimeControler.text;
    final String qualification = qualificationControler.text;
    final String proof = proofControler.text;
    

    // Check if password matches confirm password
    if (password != confirmpassword) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text('Passwords do not match.'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
      return; // Exit the method if passwords do not match
    }

    final response = await ExpertSignUp.fetchDataFromAPI(
      user_name,
      age,
      gender,
      contact,
      email,
      password,
      about,
      address,
      district,
      workingtime,
      qualification,
      proof
    );
    if (response['status']==200){

      Navigator.pushNamed(context, 'experthomepage');
    }
     else{
      // print(response['body'].toString());
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error '),
          content: Text(response['body'].toString()),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    }
 
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //App Bar
            appBar: AppBar(
          title: Text(' Expert SignUp'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 142, 166, 82),
        ),
        body: SingleChildScrollView(
          child: Center(
            child:  Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.green,
                      child: CircleAvatar(
                            radius: 69,
                            backgroundImage: AssetImage('assets/Unknown.jpg'),
                            child: ListTile(
                              onTap: () {},
                            ),
                          ),
                    ),
                  ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text("Profile",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                  ), 
                ),
              ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Name',
                      hintText: 'Enter your name',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green.shade200,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green,
                        )
                         ),
                    ),
                    controller: user_nameController,
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SizedBox(width: 500,
                    child: TextField(
                      maxLines: null,
                      minLines: 5,
                      decoration: InputDecoration(
                        labelText: 'Address',
                        hintText: 'Enter your address',
                        alignLabelWithHint: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.green.shade200,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.green,
                          )
                           ),
                      ),
                      controller: addressControler,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'District',
                      hintText: 'Enter your district',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green.shade200,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green,
                        )
                         ),
                    ),
                    controller: districtControler,

                  ),
                ),
                 Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Age',
                      hintText: 'Enter your age',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green.shade200,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green,
                        )
                         ),
                    ),
                    controller: ageController,

                  ),
                ),
                 Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Gender',
                      hintText: 'Enter your gender',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green.shade200,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green,
                        )
                         ),
                    ),
                    controller: genderController,

                  ),
                ),
                 Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    maxLength: 10,
                    decoration: InputDecoration(
                      labelText: 'Contact',
                      hintText: 'Enter your phone number',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green.shade200,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green,
                        )
                         ),
                    ),
                    controller: contactController,
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your Email',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green.shade200,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green,
                        )
                      ),
                    ),
                    controller: emailController,

                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'About',
                      hintText: 'write about your profession',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green.shade200,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green,
                        )
                      ),
                    ),
                    controller: aboutControler,

                  ),
                ),
                 Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Working Time',
                      hintText: 'Enter working time',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green.shade200,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green,
                        )
                      ),
                    ),
                    controller: workingtimeControler,

                  ),
                ),
                 Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Qualification',
                      hintText: 'Enter your qualification',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green.shade200,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green,
                        )
                      ),
                    ),
                    controller: qualificationControler,

                  ),
                ),
                 Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Proof',
                      hintText: 'Upload proof',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green.shade200,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green,
                        )
                      ),
                    ),
                    controller: proofControler,

                  ),
                ),
                 Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green.shade200,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green,
                        )
                         ),
                    ),
                    controller: passwordController,
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      hintText: 'Confirm password',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green.shade200,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.green,
                        )
                         ),
                    ),
                    controller: confirmpasswordController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(onPressed: () {
                    expertregistration(context);
                  },
                   child: Text('Sign Up'),
                   style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                   ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}