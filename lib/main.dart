import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
// import 'package:loginsignup/login.dart';
import 'package:safetravel/login.dart';
import "package:safetravel/splash.dart";
//import 'package:safetravel/pagetwo.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (BuildContext) => MyLogin(),
      //'page2': (BuildContext) => MyPage2(),
      'splash': (BuildContext) => Mysplash()
    },
  ));
}
