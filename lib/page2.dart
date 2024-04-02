import 'package:flutter/material.dart';

class MyPage2 extends StatelessWidget {
  const MyPage2({super.key});

  @override
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
            ],
          ),
        ),
      ),
    );
  }
}
