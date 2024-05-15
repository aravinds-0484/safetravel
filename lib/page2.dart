import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safetravel/auth.dart';
import 'package:safetravel/CRUD.dart';
import 'package:safetravel/map_page.dart';
import 'package:safetravel/profile.dart';

class MyPage2 extends StatelessWidget {
  final TextEditingController _currentLocationController =
      TextEditingController();
  final TextEditingController _destinationController = TextEditingController();

  String getCurrentLocation() {
    return _currentLocationController.text;
  }

  String getDestination() {
    return _destinationController.text;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 204, 169),
        title: const Text('Safe travel'),
        actions: [
          // Logout Button
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 121, 204, 169),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/LOGO.png'),
                  ),
                  SizedBox(height: height * 0.03),
                  Text(
                    'Aravind S',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Account'),
              onTap: () {
                // Navigate to account screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()),
                );
              },
              leading: Icon(Icons.person_sharp),
            ),
            ListTile(
              title: Text('Logout'),
              onTap: () {
                // Perform logout action here
                AuthServices.signoutUser();
              },
              leading: Icon(Icons.logout),
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.04),
              Container(
                width: width * 0.9,
                height: height * 0.4,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 213, 232, 224),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: width * 0.1),
                        Image.asset('assets/circle.png',
                            width: width * 0.04, height: height * 0.04),
                        SizedBox(width: width * 0.01),
                        Text(
                          "Choose Current Location",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 0.045 * width,
                            fontFamily: 'Inter.ttf',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(width: width * 0.1),
                      ],
                    ),
                    SizedBox(height: height * 0.019),
                    SizedBox(
                      width: width * 0.85,
                      height: height * 0.05,
                      child: TextField(
                        controller: _currentLocationController,
                        textAlign: TextAlign.start,
                        textAlignVertical: TextAlignVertical.center,
                        cursorHeight: 20,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 247, 249, 248),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.05),
                    Row(
                      children: [
                        SizedBox(width: width * 0.1),
                        Image.asset('assets/map-pin.png',
                            width: width * 0.037, height: height * 0.027),
                        SizedBox(width: width * 0.01),
                        Text(
                          "Choose Destination",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: width * 0.045,
                            fontFamily: 'Inter.ttf',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.01),
                    SizedBox(
                      width: width * 0.85,
                      height: height * 0.05,
                      child: TextField(
                        controller: _destinationController,
                        textAlign: TextAlign.start,
                        textAlignVertical: TextAlignVertical.center,
                        cursorHeight: 20,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 247, 249, 248),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.01),
              SizedBox(
                height: height * 0.05,
                width: width * 0.5,
                child: OutlinedButton(
                  onPressed: () {
                    // Assuming you have access to the current location and destination strings
                    String currentLocation = getCurrentLocation();
                    String destination = getDestination();
                    if (destination == "") {
                      Get.snackbar(
                          'Invalid value', 'Please enter valid values');
                    } else {
                      Crud.writeToFirestore(currentLocation, destination);
                      Navigator.push(
                        context as BuildContext,
                        MaterialPageRoute(
                            builder: (context) =>
                                MapPage(destination: '$destination')),
                      );
                    }
// Write data to Firestore
                    Crud.writeToFirestore(currentLocation, destination);
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    side: const BorderSide(
                        width: 0.5, color: Color.fromARGB(255, 137, 134, 134)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: const Text(
                    "go",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(height: height * 0.001),
              SizedBox(
                width: width * 0.8,
                height: height * 0.3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset('assets/LOGO.png',
                        width: width * 0.5, height: width * 0.4),
                    const SizedBox(height: 2),
                    const Text("Your safest travel partner"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
