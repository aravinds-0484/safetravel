import 'package:flutter/material.dart';
import 'package:safetravel/auth.dart';
//import 'package:get/route_manager.dart';

class MyPage3 extends StatelessWidget {
  const MyPage3({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Center(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 121, 204, 169),
          title: const Text('Safe travel'),
          actions: [
            // Logout Button
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                AuthServices.signoutUser();
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Material(
                elevation: 10, // Adjust the elevation value as needed
                borderRadius: BorderRadius.circular(
                    20), // Border radius for rounded corners
                child: Container(
                    child: Image.asset('map.jpg',
                        width: width * 0.9, height: height * 0.5)),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Material(
                // Adjust the elevation value as needed
                borderRadius: BorderRadius.circular(
                    20), // Border radius for rounded corners
                child: Container(
                  width: width * 0.75,
                  height: height * 0.32,
                  decoration: BoxDecoration(
                    color:
                        const Color.fromARGB(255, 0, 0, 0), // Color of the rectangle
                    borderRadius: BorderRadius.circular(
                        20), // Optional: You can add border radius for rounded corners
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.025,
                        width: width * 0.025,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Now Approaching",
                            style: TextStyle(
                              color: Colors.deepOrangeAccent, // Text color
                              fontSize: 36,
                              fontFamily: 'Inter.ttf', // Font size
                              fontWeight: FontWeight.bold, // Font weight
                            ),
                          ),
                          SizedBox(
                            width: width * 0.025,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: width * 0.025,
                          ),
                          const Text(
                            "Neendakara - Chinnakkada Rd, \nSakthikulangara North, Kollam, Kerala \n691003",
                            style: TextStyle(
                              color: Colors.deepOrangeAccent, // Text color
                              fontSize: 14,
                              fontFamily: 'Inter.ttf', // Font size
                              fontWeight: FontWeight.normal, // Font weight
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.025,
                            ),
                            Image.asset('emergency.png', width: 25, height: 25),
                            SizedBox(
                              width: width * 0.025,
                            ),
                            const Text(
                              "Blackspot Detected : 2",
                              style: TextStyle(
                                color: Color.fromARGB(
                                    255, 255, 255, 255), // Text color
                                fontSize: 20,
                                fontFamily: 'Inter.ttf', // Font size
                                fontWeight: FontWeight.normal, // Font weight
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Material(
                        color: const Color.fromARGB(255, 146, 139, 139),
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: width * 0.55,
                          height: height * 0.055,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(
                                  255, 62, 62, 62), // Color of the rectangle
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: width * 0.09,
                              ),
                              const Text(
                                "Emergency Contacts",
                                style: TextStyle(
                                  color: Colors.white, // Text color
                                  fontSize: 18,
                                  fontFamily: 'Inter.ttf', // Font size
                                  fontWeight: FontWeight.normal, // Font weight
                                ),
                              ),
                              Image.asset('alert.png',
                                  width: width * 0.1, height: height * 0.9),
                              SizedBox(
                                width: width * 0.001,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              SizedBox(
                width: width * 0.4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width * 0.47,
                  ),
                  Container(
                    width: width * 0.233,
                    height: height * 0.052,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                          255, 189, 188, 188), // Color of the rectangle
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.007,
                            ),
                            SizedBox(
                              height: height * 0.055,
                            ),
                            Text(
                              'Report a problem',
                              style: TextStyle(
                                color: Colors.black, // Color of the text
                                fontSize: height * 0.017, // Size of the text
                                fontWeight:
                                    FontWeight.bold, // Font weight of the text
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          left: width *
                              0.152, // Adjust the position of the circle as needed
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const AccidentForm()),
                              );
                            },
                            child: Container(
                              width: width * 0.095, // Diameter of the circle
                              height: height * 0.052, // Diameter of the circle
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(
                                    255, 177, 41, 41), // Color of the circle
                              ),
                              child: const Stack(
                                children: [
                                  Center(
                                    child: Text(
                                      '!',
                                      style: TextStyle(
                                        color: Colors
                                            .white, // Color of the exclamation mark
                                        fontSize:
                                            20, // Size of the exclamation mark
                                        fontWeight: FontWeight
                                            .bold, // Font weight of the exclamation mark
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
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AccidentForm extends StatefulWidget {
  const AccidentForm({super.key});

  @override
  _AccidentFormState createState() => _AccidentFormState();
}

class _AccidentFormState extends State<AccidentForm> {
  final _formKey = GlobalKey<FormState>();
  String typeOfAccident = '';
  String vehicle1 = '';
  String vehicle2 = '';
  String timeOfAccident = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 204, 169),
        title: const Text('Safe travel'),
        actions: [
          // Logout Button
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              AuthServices.signoutUser();
            },
          ),
        ],
      ),
      // Wrap with Material widget
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: 'Type of Accident'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter type of accident';
                }
                return null;
              },
              onChanged: (value) {
                setState(() {
                  typeOfAccident = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Vehicle 1'),
              onChanged: (value) {
                setState(() {
                  vehicle1 = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Vehicle 2'),
              onChanged: (value) {
                setState(() {
                  vehicle2 = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Time of Accident'),
              onChanged: (value) {
                setState(() {
                  timeOfAccident = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Process form data
                  // For example, you can upload photo here
                  print('Type of Accident: $typeOfAccident');
                  print('Vehicle 1: $vehicle1');
                  print('Vehicle 2: $vehicle2');
                  print('Time of Accident: $timeOfAccident');
                }
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
