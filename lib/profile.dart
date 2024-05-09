import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  User? _user;

  @override
  void initState() {
    super.initState();
    _loadCurrentUser();
  }

  // Function to load the current user from Firebase Authentication
  void _loadCurrentUser() {
    try {
      FirebaseAuth.instance.authStateChanges().listen((User? user) {
        setState(() {
          _user = user;
        });
      });
    } on FirebaseAuthException catch (e) {
      print('FirebaseAuthException: $e');
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 204, 169),
        title: const Text('Account'),
        actions: [
          // Logout Button
        ],
      ),
      body: Center(
        child: _user != null
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: width * 0.1,
                    backgroundImage: AssetImage('assets/LOGO.png'),
                  ),
                  SizedBox(height: height * 0.03),
                  Text(
                    'Welcome, ${_user!.displayName ?? 'User'}',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () async {
                      try {
                        await FirebaseAuth.instance.signOut();
                        Navigator.pop(
                            context); // Go back to the previous screen
                      } on FirebaseAuthException catch (e) {
                        print('FirebaseAuthException: $e');
                        // Handle sign out error
                      } catch (e) {
                        print('Error: $e');
                        // Handle other errors
                      }
                    },
                    child: Text('Sign Out'),
                  ),
                ],
              )
            : CircularProgressIndicator(), // Show a loading indicator while fetching the user
      ),
    );
  }
}
