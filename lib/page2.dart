import 'package:flutter/material.dart';
//import 'package:get/route_manager.dart';

class MyPage2 extends StatelessWidget {
  const MyPage2({super.key});

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
                height: 20,
              ),
              Container(
                width: 300, // Width of the rectangle
                height: 200,

                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 213, 232, 224),
                  // Color of the rectangle
                  borderRadius: BorderRadius.circular(
                      10), // Optional: You can add border radius for rounded corners
                ), // Height of the rectangle
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Image.asset('circle.png', width: 20, height: 20),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Choose Current Location",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 250,
                      height: 30,
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
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Image.asset('map-pin.png', width: 20, height: 20),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Choose Destination"),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 250,
                      height: 30,
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
                height: 60,
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
