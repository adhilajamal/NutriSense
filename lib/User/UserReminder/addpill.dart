import 'package:flutter/material.dart';

class AddPill extends StatefulWidget {
  const AddPill({super.key});

  @override
  State<AddPill> createState() => _AddPillState();
}

class _AddPillState extends State<AddPill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Pills'),
        backgroundColor: Color.fromARGB(255, 142, 166, 82),
      ),
    );
  }
}