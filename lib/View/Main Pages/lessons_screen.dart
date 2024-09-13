import 'package:flutter/material.dart';
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
            Positioned(
              bottom: 60,
              right: 20.0, // or whatever
              child: MyFloatButton(
                onTap: () {
                  // Get.toNamed('/addorder');
                },
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
    onTap: () {}, //=> Get.toNamed('/orderdetails'),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                'Patient Name',
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text('2024/12/9'),
            Icon(Icons.arrow_forward_ios_rounded),
          ],
        ),
      ),
    ),
  );
}
