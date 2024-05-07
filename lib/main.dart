import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:safetravel/firebase_options.dart';
import 'package:safetravel/login.dart';
import 'package:safetravel/map_page.dart';
import 'package:safetravel/profile.dart';
import "package:safetravel/splash.dart";
import 'package:safetravel/page2.dart';
import 'package:safetravel/page3.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (BuildContext) => LoginForm(),
      'page2': (BuildContext) => MyPage2(),
      'splash': (BuildContext) => Mysplash(),
      'page3': (BuildContext) => MyPage3(),
      'map': (BuildContext) => MapPage(),
      'profile': (BuildContext) => ProfileScreen(),
    },
  ));
}
