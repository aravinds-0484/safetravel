import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:safetravel/login.dart';
import 'package:safetravel/page2.dart';

class AuthServices {
  // Sign up user
  static signupUser(String email, String password, String name) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      await FirebaseAuth.instance.currentUser!.updateDisplayName(name);
      await FirebaseAuth.instance.currentUser!.updateEmail(email);
      // Save user details to Firestore or your preferred database
      // FirestoreServices.saveUser(name, email, userCredential.user!.uid);
      Get.snackbar('Success', 'Registration Successful');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Get.snackbar('Error', 'Password Provided is too weak');
      } else if (e.code == 'email-already-in-use') {
        Get.snackbar('Error', 'Email Provided already Exists');
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  // Sign in user
  static signinUser(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      print('logged in');
      Get.snackbar('Success', 'You are Logged in');

      // Navigate to Page2 after successful login
      Get.offAll(() => MyPage2());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.snackbar('Error', 'No user Found with this Email');
      } else if (e.code == 'wrong-password') {
        Get.snackbar('Error', 'Password did not match');
      }
    }
  }

  // Sign out user
  static signoutUser() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.offAll(() => LoginForm()); // Navigate to login page after signout
      Get.snackbar('Success', 'Logged out successfully');
    } catch (e) {
      Get.snackbar('Error', 'Failed to sign out');
    }
  }
}
