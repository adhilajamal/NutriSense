import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool _isSearchClicked = false;
  String _selectedLocation = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Doubts'),
        backgroundColor: Color.fromARGB(255, 142, 166, 82),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Color.fromARGB(255, 142, 166, 82),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.white60,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: 'Search for Doctors',
                  prefixIcon: PopupMenuButton<String>(
                    itemBuilder: (BuildContext context) {
                      return <PopupMenuEntry<String>>[
                        PopupMenuItem<String>(
                          value: 'Calicut',
                          child: Text('Calicut'),
                        ),
                        PopupMenuItem<String>(
                          value: 'Kannur',
                          child: Text('Kannur'),
                        ),
                        PopupMenuItem<String>(
                          value: 'Malappuram',
                          child: Text('Malappuram'),
                        ),
                        PopupMenuItem<String>(
                          value: 'Thrissur',
                          child: Text('Thrissur'),
                        ),
                        PopupMenuItem<String>(
                          value: 'Ernakulam',
                          child: Text('Ernakulam'),
                        ),
                        PopupMenuItem<String>(
                          value: 'Thiruvananthapuram',
                          child: Text('Thiruvananthapuram'),
                        ),
                      ];
                    },
                    onSelected: (String value) {
                      setState(() {
                        _selectedLocation = value;
                        _isSearchClicked = true;
                      });
                    },
                    icon: Icon(Icons.location_on, color: Colors.white),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isSearchClicked = true;
                      });
                    },
                    icon: Icon(Icons.search, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                _buildDoctorRow(),
                _buildDoctorRow(),
                _buildDoctorRow(),
                _buildDoctorRow(),
                _buildDoctorRow(),
                _buildDoctorRow(),
                // Add more _buildDoctorRow() if needed
              ],
            ),
          ),
          SizedBox(height: 20),
          // Add more rows of doctors here if needed
        ],
      ),
    );
  }

  Widget _buildDoctorRow() {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              DoctorCard(
                // image: 'expert.jpg',
                name: 'Dr. Alice Joseph',
                qualification: 'MBBS MD',
              ),
              SizedBox(height: 10),
              DoctorCard(
                // image: 'expert.jpg',
                name: 'Dr. John Doe',
                qualification: 'MBBS MD',
              ),
            ],
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            children: [
              DoctorCard(
                // image: 'expert.jpg',
                name: 'Dr. John Doe',
                qualification: 'MBBS MD',
              ),
              SizedBox(height: 10),
              DoctorCard(
                // image: 'expert.jpg',
                name: 'Dr. John Doe',
                qualification: 'MBBS MD',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

  @override
  class DoctorCard extends StatelessWidget {
  // final String image;
  final String name;
  final String qualification;

  const DoctorCard({
    // required this.image,
    required this.name,
    required this.qualification,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Define the behavior when the doctor card is tapped
        print('Doctor $name tapped');
        Navigator.pushNamed(context, 'chatscreendoctordetails');
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 142, 166, 82),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              // child: Image.asset(image, fit: BoxFit.cover),
            ),
            SizedBox(height: 10),
            Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(qualification),
          ],
        ),
      ),
    );
  }
}
