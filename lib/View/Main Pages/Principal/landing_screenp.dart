import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_overload/Cubits/landing_page_cubit.dart';
import 'package:power_overload/Cubits/states.dart';
import 'package:power_overload/Shared/constants.dart';
import 'package:flutter/cupertino.dart';

class LandingScreenP extends StatelessWidget {
  const LandingScreenP({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => LandingPageCubit(),
        child: BlocConsumer<LandingPageCubit, AppStates>(
            listener: (context, state) {},
            builder: (context, state) {
              var cubit = LandingPageCubit().get(context);

              return Scaffold(
                body: cubit.screensP[cubit.index],
                bottomNavigationBar: BottomNavigationBar(
                  currentIndex: cubit.index,
                  onTap: (value) {
                    cubit.changeNavBar(value);
                  },
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.table_view), label: 'الطلاب'),
                    BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.pencil_circle), label: 'الملاحظات'),
                    BottomNavigationBarItem(
                        icon:
                            Icon(CupertinoIcons.person_crop_circle_badge_minus),
                        label: 'الغياب'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.notifications_active),
                        label: 'الشكاوي')
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
