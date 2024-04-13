import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:safetravel/page2.dart';

class MyLogin extends StatelessWidget {
  MyLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    Future<void> signInWithEmailAndPassword(BuildContext context) async {
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
        // Navigate to the next page upon successful login
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyPage2()),
        );
      } catch (e) {
        // Handle sign-in errors
        print("Error signing in: $e");
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Failed to sign in. Please try again.'),
        ));
      }
    }

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width * 0.4,
                height: height * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'LOGO.png',
                      width: width * 0.4,
                      height: height * 0.4,
                    ),
                    SizedBox(height: height * 0.001),
                    Text("Your safest travel partner"),
                  ],
                ),
              ),
              Container(
                width: width * 0.4,
                height: height * 0.2,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(labelText: 'Email'),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(labelText: 'Password'),
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              ElevatedButton(
                onPressed: () {
                  signInWithEmailAndPassword(context);
                },
                child: Text("SIGN IN"),
              ),
              SizedBox(height: height * 0.02),
              SignUpText(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TextField()),
                  );
                  print("Sign up tapped!");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  SignUpText({required Null Function() onPressed}) {}
}

// SignUpText and TextFieldDemo classes remain unchanged
