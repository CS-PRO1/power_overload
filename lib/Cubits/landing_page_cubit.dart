import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_overload/Cubits/states.dart';
import 'package:power_overload/View/Main%20Pages/announcements_screen.dart';
import 'package:power_overload/View/Main%20Pages/grades_screen.dart';
import 'package:power_overload/View/Main%20Pages/schedules_screen.dart';
import 'package:power_overload/View/Main%20Pages/subjects_screen.dart';

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

  changeNavBar(currentIndex) {
    index = currentIndex;
    emit(ChangeBottomNavBarState());
  }
}