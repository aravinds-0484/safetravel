import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
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

class Crud1 {
  static writeTo(String Type, String Vehicle1, String Vehicle2,
      Timestamp timestamp) async {
    try {
      // Access the Firestore instance
      FirebaseFirestore firestore = FirebaseFirestore.instance;

      // Add data to a collection
      await firestore.collection('Accident_info').add({
        'Type': Type,
        'Vehicle1': Vehicle1,
        'Vehicle2': Vehicle2,
        'TimeStamp': timestamp,

        // Add more fields as needed
      });

      print('Data written to Firestore successfully');
      Get.snackbar('Accident registered', 'Sent for verification');

      // Navigate to Page2 after successful login
      Get.offAll(() => MyPage2());
    } catch (e) {
      print('Error writing to Firestore: $e');
      // Handle error appropriately
    }
  }
}

class Crud1 {
  static writeTo(
      String type, String vehicle1, String vehicle2, String timestamp) async {
    try {
      // Access the Firestore instance
      FirebaseFirestore firestore = FirebaseFirestore.instance;

      // Add data to a collection
      await firestore.collection('accidents').add({
        'type': type,
        'vehicle1': vehicle1,
        'vehicle2': vehicle2,
        'timestamp': timestamp,
        // Add more fields as needed
      });

      print('Accident data written to Firestore successfully');
    } catch (e) {
      print('Error writing accident data to Firestore: $e');
      // Handle error appropriately
    }
  }
}
