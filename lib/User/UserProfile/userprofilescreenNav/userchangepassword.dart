import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:vitamindeficiencydetection/User/UserProfile/controller/patientProfileController.dart';

class UserChangePassword extends StatefulWidget {
  const UserChangePassword({super.key});

  @override   
  State<UserChangePassword> createState() => _UserChangePasswordState();
}

class _UserChangePasswordState extends State<UserChangePassword> {

  final controller = Get.put(PatientProfileController());
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
              controller: controller.oldPasswordController,
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
              controller: controller.newPasswordController,
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
              controller: controller.confirmnewPasswordController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.green)
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.green),
                ),
                hintText: 'Confirm new password',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: ElevatedButton(
              onPressed: () {
                controller.patientChangePwd();
                // log(controller.status.toString());
              }, 
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