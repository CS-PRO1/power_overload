import 'package:flutter/material.dart';
import 'package:power_overload/Services/RBAC/role_based_widget.dart';
import 'package:power_overload/Services/RBAC/role_enum.dart';
import 'package:power_overload/View/Main%20Pages/Student/lesson_details_screen.dart';
//import 'package:power_overload/View/Main%20Pages/lesson_details_screen.dart';
import 'package:power_overload/Shared/components.dart';
import 'package:power_overload/View/Main%20Pages/Teacher/add_lesson_screen.dart';

class LessonsScreen extends StatelessWidget {
  LessonsScreen({super.key});
  TextEditingController complaints = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'حصص المادة',
        actions: [AppBarPopupMenu()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) =>
                    catItemBuilder(context, index),
                itemCount: 40,
                separatorBuilder: (BuildContext context, int index) =>
                    Container(
                      height: 1,
                      color: Colors.grey,
                    )),
            WidgetWithRole(
              allowedRoles: [UserRole.teacher],
              child: Positioned(
                bottom: 20,
                right: 20,
                child: MyFloatButton(
                  icon: Icons.add,
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AddLessonScreen()));
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

catItemBuilder(context, index) {
  return InkWell(
    onTap: () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => LessonDetailsScreen()));
    }, //=> Get.toNamed('/orderdetails'),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            WidgetWithRole(
              allowedRoles: [UserRole.teacher],
              child: IconButton(
                icon: Icon(
                  Icons.delete_outline_rounded,
                  color: Colors.red[300],
                ),
                onPressed: () {},
              ),
            ),
            Flexible(
              child: Text(
                'الحصة الاولى',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
            ),
            Text(
              '2024/12/9',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 10,
                  color: Colors.grey[600]),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    ),
  );
}
