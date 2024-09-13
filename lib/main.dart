import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:power_overload/Services/cache_helper.dart';
import 'package:power_overload/Services/dio.dart';
import 'package:power_overload/View/Auth/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  var token = CacheHelper.get('token') ?? '';
  DioHelper.init();
  FlutterNativeSplash.remove();
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return 
      
      MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
      );
    
  }
}
