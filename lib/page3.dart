import 'package:flutter/material.dart';
import 'package:safetravel/CRUD.dart';
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
                      backgroundImage: AssetImage('LOGO.png'),
                    ),
                    SizedBox(height: height * 0.03),
                    Text(
                      'John Doe',
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
                },
                leading: Icon(Icons.person_sharp),
              ),
              ListTile(
                title: Text('Report an incident'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AccidentForm()),
                  );
                },
                leading: Icon(Icons.warning_amber_rounded),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
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
                        Color.fromARGB(255, 0, 0, 0), // Color of the rectangle
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
                          SizedBox(
                            width: 10,
                          ),
                          Text(
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
                          Text(
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
                            Text(
                              "Blackspot Detected : 2",
                              style: TextStyle(
                                color: const Color.fromARGB(
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
                        color: Color.fromARGB(255, 146, 139, 139),
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: width * 0.55,
                          height: height * 0.055,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(
                                  255, 62, 62, 62), // Color of the rectangle
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: width * 0.09,
                              ),
                              Text(
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
                      color: Color.fromARGB(
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
                                    builder: (context) => AccidentForm()),
                              );
                            },
                            child: Container(
                              width: width * 0.095, // Diameter of the circle
                              height: height * 0.052, // Diameter of the circle
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color.fromARGB(
                                    255, 177, 41, 41), // Color of the circle
                              ),
                              child: Stack(
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

  TextEditingController _typeController = TextEditingController();
  TextEditingController _vehicle1Controller = TextEditingController();
  TextEditingController _vehicle2Controller = TextEditingController();
  TextEditingController _timestampController = TextEditingController();

  String getType() {
    return _typeController.text;
  }

  String getveh1() {
    return _vehicle1Controller.text;
  }

  String getveh2() {
    return _vehicle2Controller.text;
  }

  String getTime() {
    return _timestampController.text;
  }

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
              decoration: InputDecoration(labelText: 'Type of Accident'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter type of accident';
                }
                return null;
              },
              onChanged: (value) {
                setState(() {});
              },
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Vehicle 1'),
              onChanged: (value) {
                setState(() {});
              },
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Vehicle 2'),
              onChanged: (value) {
                setState(() {});
              },
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Time of Accident'),
              onChanged: (value) {
                setState(() {});
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Process form data
                  // For example, you can upload photo here
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
