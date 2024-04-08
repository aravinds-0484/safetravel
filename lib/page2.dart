import 'package:flutter/material.dart';
//import 'package:get/route_manager.dart';
import 'package:safetravel/page3.dart';

class MyPage2 extends StatelessWidget {
  const MyPage2({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text('App Bar Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                width: width * 0.6, // Width of the rectangle
                height: height * 0.4,

                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 213, 232, 224),
                  // Color of the rectangle
                  borderRadius: BorderRadius.circular(
                      30), // Optional: You can add border radius for rounded corners
                ), // Height of the rectangle
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: width * 0.1,
                        ),
                        Image.asset('circle.png', width: 17, height: 20),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Choose Current Location",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0), // Text color
                            fontSize: 18,
                            fontFamily: 'Inter.ttf', // Font size
                            fontWeight: FontWeight.normal, // Font weight
                          ),
                        ),
                        SizedBox(
                          width: width * 0.1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.019,
                    ),
                    Container(
                      width: width * 0.4,
                      height: height * 0.05,
                      child: TextField(
                        textAlign: TextAlign.start, // or TextAlign.left
                        textAlignVertical: TextAlignVertical.center,
                        cursorHeight: 20, // Adjust as needed
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 247, 249, 248),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: width * 0.1,
                        ),
                        Image.asset('map-pin.png', width: 20, height: 20),
                        SizedBox(
                          width: 0,
                        ),
                        Text(
                          "Choose Destination",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0), // Text color
                            fontSize: 18,
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
                      width: width * 0.4,
                      height: height * 0.05,
                      child: TextField(
                        textAlign: TextAlign.start, // or TextAlign.left
                        textAlignVertical: TextAlignVertical.center,
                        cursorHeight: 20, // Adjust as needed
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 247, 249, 248),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                height: height * 0.05,
                width: width * 0.5,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyPage3()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 0, 0, 0),
                    backgroundColor:
                        Color.fromARGB(255, 186, 209, 205), // Text color
                    side: BorderSide(
                        width: 0.5, color: Colors.black), // Outline stroke
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(30.0), // Circular border radius
                    ),
                  ),
                  child: Text(
                    "go",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),

              SizedBox(
                height: height * 0.001,
              ),

              Container(
                width: width * 0.4,
                height: height * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset('LOGO.png', width: 200, height: 150),
                    const SizedBox(height: 10),
                    Text("Your safest travel partner"),
                  ],
                ),
              ),

              // Adjust as needed
            ],
          ),
        ),
      ),
    );
  }
}
