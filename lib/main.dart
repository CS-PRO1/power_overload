import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:power_overload/Services/cache_helper.dart';
import 'package:power_overload/Services/dio.dart';
import 'package:power_overload/View/Main%20Pages/Student/landing_screen.dart';
import 'package:power_overload/Shared/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  //var token = CacheHelper.get('token') ?? '';
  DioHelper.init();
  FlutterNativeSplash.remove();
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: green50,
      ),
      debugShowCheckedModeBanner: false,
      locale: Locale('ar', ''),
      home: Directionality(
          textDirection: TextDirection.rtl, child: LandingScreen()),
    );
  }
}
