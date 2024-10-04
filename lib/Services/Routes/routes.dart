import 'package:flutter/material.dart';
import 'package:power_overload/View/Auth/login_screen.dart';
import 'package:power_overload/View/Main%20Pages/Parent/behavioral_notes.dart';
import 'package:power_overload/View/Main%20Pages/Student/announcements_screen.dart';
import 'package:power_overload/View/Main%20Pages/Student/complaints_screen.dart';
import 'package:power_overload/View/Main%20Pages/Student/grades_details_screen.dart';
import 'package:power_overload/View/Main%20Pages/Student/grades_screen.dart';
import 'package:power_overload/View/Main%20Pages/Student/landing_screen.dart';
import 'package:power_overload/View/Main%20Pages/Student/lesson_details_screen.dart';
import 'package:power_overload/View/Main%20Pages/Student/lessons_screen.dart';
import 'package:power_overload/View/Main%20Pages/Student/schedules_screen.dart';
import 'package:power_overload/View/Main%20Pages/Student/subjects_screen.dart';
import 'package:power_overload/View/Main%20Pages/Teacher/add_lesson_screen.dart';
import 'package:power_overload/View/Main%20Pages/Teacher/marks_list_screen.dart';
import 'package:power_overload/View/Main%20Pages/Teacher/marks_screen.dart';
import 'package:power_overload/View/splash_screen.dart';

Map<String, Widget Function(BuildContext)> getRoutes() {
  return {
    '/': (context) => SplashScreen(),
    '/login': (context) => LoginScreen(),
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
    '/parent/behavioral_notes': (context) => BehavioralNotes(),
    '/teacher/marks': (context) => MarksScreen(),
    '/teacher/marks_list': (context) => MarksListScreen(),
    '/teacher/add_lesson': (context) => AddLessonScreen()
  };
}