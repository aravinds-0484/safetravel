// ignore: unused_import
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:safetravel/page2.dart';
import 'package:safetravel/auth.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String fullname = '';
  bool login = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Safetravel'),
        backgroundColor: Color.fromARGB(255, 121, 204, 169),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('LOGO.png'),
              // ======== Full Name ========
              Container(
                child: login
                    ? Container()
                    : TextFormField(
                        key: ValueKey('fullname'),
                        decoration: InputDecoration(
                          hintText: 'Enter Full Name',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Full Name';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          setState(() {
                            fullname = value!;
                          });
                        },
                      ),
              ),
              // ======== Email ========
              TextFormField(
                key: ValueKey('email'),
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                ),
                validator: (value) {
                  if (value!.isEmpty || !value.contains('@')) {
                    return 'Please Enter valid Email';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    email = value!;
                  });
                },
              ),
              // ======== Password ========
              TextFormField(
                key: ValueKey('password'),
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                ),
                validator: (value) {
                  if (value!.length < 6) {
                    return 'Please Enter Password of min length 6';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    password = value!;
                  });
                },
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                height: height * 0.065,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        login
                            ? AuthServices.signinUser(email, password)
                            : AuthServices.signupUser(
                                email, password, fullname);
                      }
                    },
                    child: Text(
                      login ? 'Login' : 'Signup',
                      style: TextStyle(
                        fontSize: height * 0.023,
                      ),
                    )),
              ),
              SizedBox(
                height: height * 0.005,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      login = !login;
                    });
                  },
                  child: Text(
                    login
                        ? "Don't have an account? Signup"
                        : "Already have an account? Login",
                    style: TextStyle(fontSize: width * 0.02),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
