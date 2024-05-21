import 'package:flutter/material.dart';


class ExpertProfileScreen extends StatefulWidget {
  const ExpertProfileScreen({super.key});

  @override
  State<ExpertProfileScreen> createState() => _ExpertProfileScreenState();
}

class _ExpertProfileScreenState extends State<ExpertProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor:  Color.fromARGB(255, 142, 166, 82),

        elevation: 50,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: CircleAvatar(
                radius: 61,
                backgroundColor: Colors.green.shade200,
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/Unknown.jpg'),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 78,
                      left: 75,
                    ),
                    child: IconButton(
                      onPressed: () {} , 
                      icon: Icon(Icons.camera_alt),iconSize: 30,),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('alicejoseph@gmail.com',
              style: TextStyle(
                color:Color.fromARGB(255, 142, 166, 82),
                fontSize: 15
              ),),
            ),
           Padding(
             padding: const EdgeInsets.only(top: 30),
             child: ListTile(
              onTap: () {
                // Handle onTap event
              },
              title: Text('About',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade800,
                ),), // Title of the field
              trailing: Icon(Icons.arrow_forward_ios), 
             ),
           ),
           ListTile(
            onTap: () {
              Navigator.pushNamed(context ,'userchangepassword');
            },
            title: Text('Change Password',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 60, 58, 58),
              ),), // Title of the field
            trailing: Icon(Icons.arrow_forward_ios), 
           ),
           ListTile(
            onTap: () {
               Navigator.pushNamed(context, 'usersettings');
            },
            title: Text('Settings',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey.shade800,
              ),), // Title of the field
            trailing: Icon(Icons.arrow_forward_ios), 
           ),
           ListTile(
            onTap: () {
              // Handle onTap event
            },
            title: Text('Feedback and Rating',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey.shade800,
              ),), // Title of the field
            trailing: Icon(Icons.arrow_forward_ios),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 20),
             child: OutlinedButton(
              style: ButtonStyle(
                side: MaterialStateProperty.all(BorderSide(
                  color: Colors.green
                )),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
                fixedSize: MaterialStateProperty.all<Size>(Size(110,40))
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'login');
              }, 
              child: Text('Logout',
              style: TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 142, 166, 82),
                ),
               ),
              ),
           ),
          ],
        ),
      ),
    );
  }
}