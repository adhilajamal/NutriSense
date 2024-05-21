import 'package:flutter/material.dart';
import '../api/registration.dart';

class SignUpUser extends StatefulWidget {
  const SignUpUser({super.key});

  @override
  State<SignUpUser> createState() => _SignUpUserState();
}

class _SignUpUserState extends State<SignUpUser> {
//  final _formKey = GlobalKey<FormState>();
 final TextEditingController user_nameController = TextEditingController();
 final TextEditingController ageController = TextEditingController();
 final TextEditingController genderController = TextEditingController();
 final TextEditingController contactController = TextEditingController();
 final TextEditingController emailController = TextEditingController();
 final TextEditingController passwordController = TextEditingController();
 final TextEditingController confirmpasswordController = TextEditingController();
 


 void registration(BuildContext context) async {
    final String user_name = user_nameController.text;
    final String age = ageController.text;
    final String gender = genderController.text;
    final String contact = contactController.text;
    final String email = emailController.text;
    final String password = passwordController.text;
    final String confirmpassword = confirmpasswordController.text;
    

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
    if(email.isNotEmpty && password.isNotEmpty && user_name.isNotEmpty){

    final response = await SignUp.fetchDataFromAPI(
      user_name,
      age,
      gender,
      contact,
      email,
      password
    );
    if(response['status']==200){
       Navigator.pushNamed(context, 'getstarted');
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

  
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //App Bar
          appBar: AppBar(
          title: Text('User SignUp'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 142, 166, 82),
        ),
        body: Center(
          child:  SingleChildScrollView(
            child: Column(
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
                      registration(context);
                      // Navigator.pushNamed(context, 'getstarted');
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