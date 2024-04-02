import 'package:flutter/material.dart';
//import 'package:get/route_manager.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Center(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width * 0.4,
                height: height * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('LOGO.png', width: 200, height: 150),
                    const SizedBox(height: 10),
                    Text("Your safest travel partner"),
                  ],
                ),
              ),

              // Adjust as needed
              Container(
                width: 150,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Row(children: [
                    Image.asset('google.png', width: 20, height: 20),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("SIGN UP")
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
