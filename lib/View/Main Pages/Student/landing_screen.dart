import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_overload/Cubits/landing_page_cubit.dart';
import 'package:power_overload/Cubits/states.dart';
import 'package:power_overload/Shared/constants.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => LandingPageCubit(),
        child: BlocConsumer<LandingPageCubit, AppStates>(
            listener: (context, state) {},
            builder: (context, state) {
              var cubit = LandingPageCubit().get(context);

              return Scaffold(
                body: cubit.screens[cubit.index],
                bottomNavigationBar: BottomNavigationBar(
                  currentIndex: cubit.index,
                  onTap: (value) {
                    cubit.changeNavBar(value);
                  },
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.abc_outlined),
                      label: 'المواد',
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.table_view), label: 'البرامج'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.poll_outlined), label: 'العلامات'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.notifications_active),
                        label: 'الاعلانات')
                  ],
                  showUnselectedLabels: true,
                  unselectedItemColor: Colors.grey,
                  selectedItemColor: green400,
                  type: BottomNavigationBarType.fixed,
                  iconSize: 22,
                  landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
                ),
              );
            }));
  }
}
