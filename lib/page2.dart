import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';
// ignore: unused_import
import 'package:safetravel/login.dart';
import 'package:safetravel/page3.dart';
// ignore: unused_import
import 'package:firebase_auth/firebase_auth.dart';
import 'package:safetravel/auth.dart';

class MyPage2 extends StatelessWidget {
  const MyPage2({Key? key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 121, 204, 169),
        title: Text('Safe travel'),
        actions: [
          // Logout Button
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              AuthServices.signoutUser();
            },
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.04),
              Container(
                width: width * 0.6,
                height: height * 0.4,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 213, 232, 224),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: width * 0.1),
                        Image.asset('circle.png',
                            width: width * 0.037, height: height * 0.027),
                        SizedBox(width: width * 0.01),
                        Text(
                          "Choose Current Location",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 0.03 * width,
                            fontFamily: 'Inter.ttf',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(width: width * 0.1),
                      ],
                    ),
                    SizedBox(height: height * 0.019),
                    Container(
                      width: width * 0.4,
                      height: height * 0.05,
                      child: TextField(
                        textAlign: TextAlign.start,
                        textAlignVertical: TextAlignVertical.center,
                        cursorHeight: 20,
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
                    SizedBox(height: height * 0.05),
                    Row(
                      children: [
                        SizedBox(width: width * 0.1),
                        Image.asset('map-pin.png',
                            width: width * 0.037, height: height * 0.027),
                        SizedBox(width: width * 0.01),
                        Text(
                          "Choose Destination",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: width * 0.03,
                            fontFamily: 'Inter.ttf',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.02),
                    Container(
                      width: width * 0.4,
                      height: height * 0.05,
                      child: TextField(
                        textAlign: TextAlign.start,
                        textAlignVertical: TextAlignVertical.center,
                        cursorHeight: 20,
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
              SizedBox(height: height * 0.01),
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
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    side: BorderSide(
                        width: 0.5,
                        color: const Color.fromARGB(255, 137, 134, 134)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Text(
                    "go",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(height: height * 0.001),
              Container(
                width: width * 0.8,
                height: height * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset('LOGO.png',
                        width: width * 0.5, height: width * 0.4),
                    SizedBox(height: 2),
                    Text("Your safest travel partner"),
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
