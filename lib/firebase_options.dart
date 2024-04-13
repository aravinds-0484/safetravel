// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC3KBiDNU4Dql6zq3J5qyOhYN3K2fEQ5JQ',
    appId: '1:300824618215:web:22d01f1e878d2dceadae42',
    messagingSenderId: '300824618215',
    projectId: 'safe-travel-3f42d',
    authDomain: 'safe-travel-3f42d.firebaseapp.com',
    databaseURL: 'https://safe-travel-3f42d-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'safe-travel-3f42d.appspot.com',
    measurementId: 'G-Q2LT6M8VYP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyClpgyoPV6z2YRbwoOlAgWODYQEjKxJZmU',
    appId: '1:300824618215:android:bf112188ec704ffcadae42',
    messagingSenderId: '300824618215',
    projectId: 'safe-travel-3f42d',
    databaseURL: 'https://safe-travel-3f42d-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'safe-travel-3f42d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDqd2M8YRmoyop2b9ZQXbxTLrJUNRFvxI4',
    appId: '1:300824618215:ios:9b382abe37718796adae42',
    messagingSenderId: '300824618215',
    projectId: 'safe-travel-3f42d',
    databaseURL: 'https://safe-travel-3f42d-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'safe-travel-3f42d.appspot.com',
    iosClientId: '300824618215-ck3e3h7e476vndei5d2pu5ivvtet87rv.apps.googleusercontent.com',
    iosBundleId: 'com.example.safetravel',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDqd2M8YRmoyop2b9ZQXbxTLrJUNRFvxI4',
    appId: '1:300824618215:ios:e5ac6acc380ffbdbadae42',
    messagingSenderId: '300824618215',
    projectId: 'safe-travel-3f42d',
    databaseURL: 'https://safe-travel-3f42d-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'safe-travel-3f42d.appspot.com',
    iosClientId: '300824618215-snb2d31liabfjd79s5n4lfobu99t4li8.apps.googleusercontent.com',
    iosBundleId: 'com.example.safetravel.RunnerTests',
  );
}