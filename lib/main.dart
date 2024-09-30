import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:power_overload/Services/cache_helper.dart';
import 'package:power_overload/Services/dio.dart';
import 'package:power_overload/View/Auth/login_screen.dart';
import 'package:power_overload/View/Main%20Pages/Parent/behavioral_notes.dart';
import 'package:power_overload/View/Main%20Pages/Student/announcements_screen.dart';
import 'package:power_overload/View/Main%20Pages/Student/complaints_screen.dart';
import 'package:power_overload/View/Main%20Pages/Student/grades_details_screen.dart';
import 'package:power_overload/View/Main%20Pages/Student/grades_screen.dart';
import 'package:power_overload/View/Main%20Pages/Student/landing_screen.dart';
import 'package:power_overload/Shared/constants.dart';
import 'package:power_overload/View/Main%20Pages/Student/lesson_details_screen.dart';
import 'package:power_overload/View/Main%20Pages/Student/lessons_screen.dart';
import 'package:power_overload/View/Main%20Pages/Student/schedules_screen.dart';
import 'package:power_overload/View/Main%20Pages/Student/subjects_screen.dart';
import 'package:power_overload/View/Main%20Pages/Teacher/marks_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();

  CacheHelper.setString('role', 'manager');
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
      initialRoute: '/teacher/marks',
      routes: {
        '/': (context) => LoginScreen(),
        //'/home': (context) => LandingScreen(),
        '/home': (context) => BehavioralNotes(),
        '/subjects': (context) => SubjectsScreen(),
        '/schedules': (context) => SchedulesScreen(),
        '/lessons': (context) => LessonsScreen(),
        '/lesson_details': (context) => LessonDetailsScreen(),
        '/grades': (context) => GradesScreen(),
        '/grade_details': (context) => GradesDetailsScreen(),
        '/announcements': (context) => AnnouncementsScreen(),
        '/complaints': (context) => ComplaintsScreen(),
        '/teacher/marks': (context) => MarksScreen()
      },
      //home: LoginScreen(),
    );
  }
}
