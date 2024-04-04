import 'package:flutter/material.dart';
//import 'package:get/route_manager.dart';

class MyPage3 extends StatelessWidget {
  const MyPage3({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Center(
      child: Scaffold(
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
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(
                        255, 213, 232, 224), // Color of the rectangle
                    borderRadius: BorderRadius.circular(
                        20), // Optional: You can add border radius for rounded corners
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Material(
                // Adjust the elevation value as needed
                borderRadius: BorderRadius.circular(
                    20), // Border radius for rounded corners
                child: Container(
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    color:
                        Color.fromARGB(255, 0, 0, 0), // Color of the rectangle
                    borderRadius: BorderRadius.circular(
                        20), // Optional: You can add border radius for rounded corners
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                        width: 2,
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
                            width: 10,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
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
                        height: 20,
                      ),
                      Container(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset('emergency.png', width: 25, height: 25),
                            SizedBox(
                              width: 10,
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
                        height: 25,
                      ),
                      Material(
                        color: Color.fromARGB(255, 146, 139, 139),
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 290,
                          height: 35,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(
                                  255, 62, 62, 62), // Color of the rectangle
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 35,
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
                              SizedBox(
                                width: 18,
                              ),
                              Image.asset('alert.png', width: 25, height: 25),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Material(
                color: Color.fromARGB(0, 252, 252, 252),
                child: Row(
                  children: [
                    SizedBox(
                      width: 350,
                    ),
                    Container(
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(
                              255, 189, 188, 188), // Color of the rectangle
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
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
