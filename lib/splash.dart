import 'dart:async';
import 'package:flutter/material.dart';
import 'package:safetravel/login.dart';

enum SplashTransition {
  slideTransition,
  scaleTransition,
  rotationTransition,
  sizeTransition,
  fadeTransition,
  decoratedBoxTransition
}

class Mysplash extends StatefulWidget {
  const Mysplash({super.key});

  @override
  _MysplashState createState() => _MysplashState();
}

class _MysplashState extends State<Mysplash> {
  final SplashTransition transition = SplashTransition
      .fadeTransition; // Change this to use different transitions

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 1000),
          pageBuilder: (_, __, ___) => const LoginForm(),
          transitionsBuilder: (_, animation, __, child) {
            switch (transition) {
              case SplashTransition.slideTransition:
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1.0, 0.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                );
              case SplashTransition.scaleTransition:
                return ScaleTransition(
                  scale: Tween<double>(begin: 0.0, end: 1.0).animate(animation),
                  child: child,
                );
              case SplashTransition.rotationTransition:
                return RotationTransition(
                  turns: Tween<double>(begin: 0.0, end: 1.0).animate(animation),
                  child: child,
                );
              case SplashTransition.sizeTransition:
                return SizeTransition(
                  sizeFactor:
                      Tween<double>(begin: 0.0, end: 1.0).animate(animation),
                  child: child,
                );
              case SplashTransition.fadeTransition:
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              case SplashTransition.decoratedBoxTransition:
                // No direct equivalent transition, returning FadeTransition as placeholder
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
            }
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'logoHero', // Unique tag for the hero animation
              child: SizedBox(
                width: width * 0.4,
                height: height * 0.4,
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  child: Image.asset(
                    'LOGO.png',
                    width: width * 0.4,
                    height: height * 0.4,
                    key: ValueKey(
                        transition), // Ensure the animation is triggered when the transition changes
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.01),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              child: Text(
                "Your safest travel partner",
                key: ValueKey(
                    transition), // Ensure the animation is triggered when the transition changes
              ),
            ),
          ],
        ),
      ),
    );
  }
}
