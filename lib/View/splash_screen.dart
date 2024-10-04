import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:power_overload/Shared/constants.dart';
import 'package:power_overload/View/Auth/login_screen.dart';
import 'package:power_overload/View/Main%20Pages/Parent/behavioral_notes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      backgroundColor: Colors.white,
      onInit: () {
        debugPrint("On Init");
      },
      onEnd: () {
        debugPrint("On End");
      },
      childWidget: SizedBox(
        height: 350,
        width: 350,
        child: Image.asset("assets/logo.png"),
      ),
      onAnimationEnd: () => debugPrint("On Fade In End"),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [green400, green100, green500],
      ),
      nextScreen: BehavioralNotes(),
    );
  }
}
