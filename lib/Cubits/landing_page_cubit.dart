import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_overload/Cubits/states.dart';
import 'package:power_overload/View/Main%20Pages/Principal/add_behavioral_note.dart';
import 'package:power_overload/View/Main%20Pages/Principal/attendance_check.dart';
import 'package:power_overload/View/Main%20Pages/Principal/complaints_screen.dart';
import 'package:power_overload/View/Main%20Pages/Principal/students_screen.dart';
import 'package:power_overload/View/Main%20Pages/Student/announcements_screen.dart';
import 'package:power_overload/View/Main%20Pages/Student/grades_screen.dart';
import 'package:power_overload/View/Main%20Pages/Student/schedules_screen.dart';
import 'package:power_overload/View/Main%20Pages/Student/subjects_screen.dart';
// import 'package:power_overload/View/Main%20Pages/announcements_screen.dart';
// import 'package:power_overload/View/Main%20Pages/grades_screen.dart';
// import 'package:power_overload/View/Main%20Pages/schedules_screen.dart';
// import 'package:power_overload/View/Main%20Pages/subjects_screen.dart';

class LandingPageCubit extends Cubit<AppStates> {
  LandingPageCubit() : super(LandingPageInitState());
  LandingPageCubit get(context) => BlocProvider.of(context);

  int index = 0;
  List screens = [
    SubjectsScreen(),
    SchedulesScreen(),
    GradesScreen(),
    AnnouncementsScreen(),
  ];

  List screensP = [
    StudentsScreen(),
    AddBehavioralNote(),
    AttendanceCheckScreen(),
    ComplaintsScreen1(),
  ];

  changeNavBar(currentIndex) {
    index = currentIndex;
    emit(ChangeBottomNavBarState());
  }
}
