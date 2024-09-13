import 'package:flutter/material.dart';
import 'package:power_overload/View/Main%20Pages/lesson_details_screen.dart';
import 'package:power_overload/components.dart';

class LessonsScreen extends StatelessWidget {
  const LessonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'حصص المادة',
        leading: AppBarPopupMenu(),
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
            Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.grey,
            ),
            Flexible(
              child: Text(
                'الحصة الاولى',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
            ),
            Text(
              '2024/12/9',textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 10,
                  color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    ),
    
  );
}
