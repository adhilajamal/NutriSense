import 'package:flutter/material.dart';

class ImageUpload extends StatelessWidget {
  const ImageUpload({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       //App Bar
        appBar:  AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Center(
  child: Container(
    width: 350,
    height: 350,
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white.withOpacity(0.9), // Adjust the opacity as needed
    ),
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Padding(
          padding: const EdgeInsets.all(2),
          child: Text('Upload Image',
          style: TextStyle(
            fontSize: 20,
            color: Colors.green.shade300,
          ),
        ),
      ),
       SizedBox(height: 10,), 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.green[200],
                  child: CircleAvatar(
                    radius: 69,
                    backgroundImage: AssetImage('assets/photo.jpg'),
                    child: ListTile(
                      onTap: () {},
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.green[200],
                  child: CircleAvatar(
                    radius: 69,
                    backgroundImage: AssetImage('assets/camera.jpg'),
                    child: ListTile(
                      onTap: () {},
                    ),
                    
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 70),
                child: Text(
                  'Choose Photo',
                  style: TextStyle(color: Colors.green),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  "Take photo",
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  ),
),

           
    );       
  }
}
    //To show the bottom sheet
    void showImageUploadBottomSheet(BuildContext context) {
      showModalBottomSheet(
        context: context, 
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),

        ),
        builder: (BuildContext context) {
          return ImageUpload();
        },
        );
    }
