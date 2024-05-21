import 'package:flutter/material.dart';
import 'package:vitamindeficiencydetection/User/UserHome/imageupload.dart';
// import 'package:vitamindeficiencydetection/userchatwithdoctor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar:  AppBar(
          title: const Text('NutriSense'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 142, 166, 82),
          elevation: 50,
          actions: [
          PopupMenuButton(
            icon: Icon(Icons.menu),
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.lightbulb),
                  title: Text('Tips'),
                  onTap: () {
                    // Handle tips navigation
                    Navigator.pop(context); // Close the popup menu
                  },
                ),
              ),
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.healing),
                  title: Text('Remedies'),
                  onTap: () {
                    // Handle remedies navigation
                    Navigator.pop(context); // Close the popup menu
                  },
                ),
              ),
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.chat),
                  title: Text('Chat with Expert'),
                  onTap: () {
                    Navigator.pushNamed(context, 'userchatwithdoctor');
                    // Navigator.pop(context); // Close the popup menu
                  },
                ),
              ),
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Logout'),
                  onTap: () {
                    // Handle logout navigation
                    Navigator.pushNamed(context, 'login'); // Close the popup menu and navigate to login screen
                  },
                ),
              ),
            ],
          ),
        ],
      ),
         
          body: Stack(
          fit: StackFit.expand,
          children: [
          // Background Image
          Image.asset(
            'assets/homepage.jpg', 
            fit: BoxFit.cover,
          ),
          // Content
          Center(
            child: Container(
              width: 320,
              height: 320,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white.withOpacity(0.9), // Adjust the opacity as needed
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 98,
                        right: 85,
                        bottom: 20, // Reduced bottom padding to make space for the button
                      ),
                      child: Text(
                        '    Check Deficiency',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.green.shade600,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 180,
                        height: 50,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(25),
                         color: Colors.green.withOpacity(0.9), // Adjust the opacity as needed
              ),
                        child: TextButton.icon(
                          onPressed: () {
                            showImageUploadBottomSheet(context);
                          }, 
                          icon: Icon(Icons.image,color: Colors.white,), 
                          label: Text('Upload Image',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                         ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'detection');
                      },
                      child: Text('Check'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.green),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
  


