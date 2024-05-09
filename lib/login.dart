import 'package:flutter/material.dart';
import 'package:safetravel/auth.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String fullname = '';
  String phone = '';
  bool login = false;
  bool isLoading = false; // Flag to track loading state

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Safetravel'),
        backgroundColor: const Color.fromARGB(255, 121, 204, 169),
      ),
      body: Form(
        key: _formKey,
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/LOGO.png'),
                  if (login)
                    Column(
                      children: [
                        // ======== Full Name ========
                        TextFormField(
                          key: const ValueKey('fullname'),
                          decoration: const InputDecoration(
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
                        SizedBox(height: height * 0.02),
                        // ======== Phone Number ========
                        TextFormField(
                          key: const ValueKey('phone'),
                          decoration: const InputDecoration(
                            hintText: 'Enter Phone number',
                          ),
                          validator: (value) {
                            if (value!.isEmpty ||
                                value.length < 10 ||
                                value.length > 11) {
                              return 'Please Enter valid Phone Number';
                            } else {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            setState(() {
                              phone = value!;
                            });
                          },
                        ),
                        SizedBox(height: height * 0.02),
                      ],
                    ),
                  // ======== Email ========
                  TextFormField(
                    key: const ValueKey('email'),
                    decoration: const InputDecoration(
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
                  SizedBox(height: height * 0.02),
                  // ======== Password ========
                  TextFormField(
                    key: const ValueKey('password'),
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Enter Password',
                    ),
                    validator: (value) {
                      if (value!.isEmpty || value.length < 6) {
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
                  SizedBox(height: height * 0.04),
                  SizedBox(
                    height: height * 0.065,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: isLoading
                          ? null
                          : () async {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                setState(() {
                                  isLoading = true; // Start loading
                                });
                                try {
                                  if (!login) {
                                    await AuthServices.signinUser(
                                        email, password);
                                  } else {
                                    await AuthServices.signupUser(
                                        email, password, fullname, phone);
                                  }
                                } catch (e) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Authentication failed. Please try again.',
                                      ),
                                      duration: Duration(seconds: 3),
                                    ),
                                  );
                                } finally {
                                  setState(() {
                                    isLoading = false; // Stop loading
                                  });
                                }
                              }
                            },
                      child: Text(
                        login ? 'Signup' : 'Login',
                        style: TextStyle(
                          fontSize: height * 0.023,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.005),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        login = !login;
                      });
                    },
                    child: Text(
                      login
                          ? "Already have an account? Login"
                          : "Don't have an account? Signup",
                      style: TextStyle(fontSize: width * 0.03),
                    ),
                  ),
                ],
              ),
            ),
            if (isLoading) // Show circular progress indicator when loading
              Container(
                color: Color.fromARGB(255, 243, 239, 239).withOpacity(0.5),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
