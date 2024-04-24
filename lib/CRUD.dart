import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:safetravel/page3.dart';

class Crud {
  static writeToFirestore(String currentLocation, String destination) async {
    try {
      // Access the Firestore instance
      FirebaseFirestore firestore = FirebaseFirestore.instance;

      // Add data to a collection
      await firestore.collection('travel_data').add({
        'current_location': currentLocation,
        'destination': destination,
        // Add more fields as needed
      });

      print('Data written to Firestore successfully');
      Get.snackbar('Route set', 'let\'s go');

      // Navigate to Page2 after successful login
      Get.offAll(() => const MyPage3());
    } catch (e) {
      print('Error writing to Firestore: $e');
      // Handle error appropriately
    }
  }
}
