import 'package:flutter/material.dart';

class ExpertChangePassword extends StatefulWidget {
  const ExpertChangePassword({super.key});

  @override
  State<ExpertChangePassword> createState() => _ExpertChangePasswordState();
}

class _ExpertChangePasswordState extends State<ExpertChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'),
        backgroundColor: Color.fromARGB(255, 142, 166, 82),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.green)
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.green)
                ),
                hintText: 'Enter old password',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.green)
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.green)
                ),
                hintText: 'Enter new password',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20 ,left: 5,right: 5),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.green)
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.green),
                ),
                hintText: 'Confirms new password',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: ElevatedButton(
              onPressed: () {}, 
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  )
                ),
                backgroundColor: MaterialStateProperty.all(Colors.green),
                fixedSize: MaterialStateProperty.all<Size>(Size(120, 45))
                
              ),
              child: Text('Save',
              style: TextStyle(
                fontSize: 16,
               ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
