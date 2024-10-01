import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:power_overload/Shared/components.dart';
import 'package:power_overload/Shared/constants.dart';
import 'package:power_overload/View/Main%20Pages/Student/complaints_screen.dart';
import 'package:power_overload/View/Main%20Pages/Student/lessons_screen.dart';

class SubjectsScreen extends StatelessWidget {
  SubjectsScreen({super.key});
  TextEditingController complaints = new TextEditingController();

  List<String> page_info = [
    'الرياضيات',
    'العلوم',
    'اللغة العربية',
    'التاريخ',
    'الجغرافيا',
    'اللغة الإنجليزية',
    'علوم الحاسوب',
    'الفيزياء',
    'الكيمياء',
    'الفلسفة',
    'اللغة الفرنسية'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: green50,
        appBar: MyAppBar(
          title: 'المواد',
          actions: [AppBarPopupMenu()],
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: GridView.count(
                  childAspectRatio: 1,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 10,
                  children: List.generate(
                          page_info.length,
                          (index) =>
                              flowershape(context, page_info[index], ontap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LessonsScreen()));
                              }))
                      .animate(
                        interval: Duration(milliseconds: 50),
                      )
                      .slide(duration: Duration(milliseconds: 300))
                      .fadeIn(
                          curve: Curves.easeInOut,
                          duration: Duration(milliseconds: 250))
                      .flip(duration: Duration(milliseconds: 200)))),
        ));
  }

  // Widget flowershape(BuildContext context, int index) {
  //   return InkWell(
  //     splashColor: Colors.transparent,
  //     child: Padding(
  //       padding: const EdgeInsets.all(30.0),
  //       child: Stack(
  //         children: [
  //           Container(
  //             decoration: BoxDecoration(
  //               borderRadius: BorderRadius.all(Radius.circular(10)),
  //               color: green400,
  //             ),
  //           ),
  //           Transform.rotate(
  //             angle: 45 * pi / 180,
  //             child: Container(
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.all(Radius.circular(10)),
  //                 color: green300,
  //               ),
  //             ),
  //           ),
  //           Center(
  //             child: Text(
  //               page_info[index],
  //               textAlign: TextAlign.center,
  //               style: TextStyle(
  //                 color: green100,
  //                 fontWeight: FontWeight.bold,
  //                 fontSize: 20,
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //     onTap: () {
  //       Navigator.of(context)
  //           .push(MaterialPageRoute(builder: (context) => LessonsScreen()));
  //     },
  //   );
  // }
}
