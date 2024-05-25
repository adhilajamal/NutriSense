import 'package:flutter/material.dart';
import 'package:vitamindeficiencydetection/EXPERT/signupexpert.dart';
import 'package:vitamindeficiencydetection/api/doctorsrepository.dart';
import 'package:vitamindeficiencydetection/doctor.dart';
import 'package:vitamindeficiencydetection/models/doctor_list_model.dart';


class UserAppointmentScreen extends StatefulWidget {
  const UserAppointmentScreen({Key? key});

  @override
  State<UserAppointmentScreen> createState() => _UserAppointmentScreenState();
}

class _UserAppointmentScreenState extends State<UserAppointmentScreen> {
  bool _isSearchClicked = false;
  String _selectedLocation = '';
  List<Doctors> _doctors = [];

  void _addDoctor(Doctors doctor) {
    setState(() {
      _doctors.add(doctor);
    });
  }
  DoctorRepository doctorRepository=DoctorRepository();
 @override
  void initState() async{
    // TODO: implement initState
    super.initState();
    // var doctormodel= await doctorRepository.getdoctorslist();
    // setState(() {
    //   _doctors=doctormodel?.doctors??[];
    // });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointment Booking'),
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
         SizedBox(height: 20,width: 20,),
         Expanded(
            child: ListView.builder(
              itemCount: _doctors.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_doctors[index].userName??''),
                  subtitle: Text(_doctors[index].qualification??''),
                );
              },
            ),
          ),
           SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: ElevatedButton(onPressed: () {
                Navigator.pushNamed(context, 'doctordetails');
              }, 
               
               style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 142, 166, 82),),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                )),
                fixedSize: MaterialStateProperty.all<Size>(Size(220,40))
               ),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text('Dr.Name',style: TextStyle(fontSize: 16),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Icon(Icons.arrow_forward_ios),
                )
              ],)),
            )
          
        ],
      ),
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
        Navigator.pushNamed(context, 'doctordetails');
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

doctorlist()async{
  var doctor =await DoctorRepository().getdoctorslist();
  return doctor?.doctors??[];
}
