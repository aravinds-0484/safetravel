// ignore: unused_import
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
// ignore: unused_import
import 'package:safetravel/firebase_options.dart';
import 'package:safetravel/login.dart';
import "package:safetravel/splash.dart";
import 'package:safetravel/page2.dart';
import 'package:safetravel/page3.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'page3',
    routes: {
      'login': (BuildContext) => LoginForm(),
      'page2': (BuildContext) => MyPage2(),
      'splash': (BuildContext) => Mysplash(),
      'page3': (BuildContext) => MyPage3(),
    },
  ));
}
