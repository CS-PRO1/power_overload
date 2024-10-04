import 'package:flutter/material.dart';
import 'package:power_overload/Services/Routes/routes.dart';
import 'package:power_overload/Services/Cache/cache_helper.dart';
import 'package:power_overload/Services/Dio/dio.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:power_overload/Shared/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  CacheHelper.setString('role', 'superadmin');
  DioHelper.init();
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: green300,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        scaffoldBackgroundColor: green50,
      ),
      debugShowCheckedModeBanner: false,
      locale: Locale('ar', ''),
      supportedLocales: [Locale('ar', '')],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      initialRoute: '/',
      routes: getRoutes(),
    );
  }
}
