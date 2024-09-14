import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:power_overload/components.dart';
import 'package:power_overload/constants.dart';
//import 'package:readmore/readmore.dart';
import 'package:readmore/readmore.dart';

class LessonDetailsScreen extends StatelessWidget {
  const LessonDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          MyAppBar(title: 'الحصة الاولى', leading: AppBarPopupMenu(), actions: [
        IconButton(
          icon: Icon(Icons.file_open),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.star),
          onPressed: () {},
        ),
      ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'عنوان الحصة',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ExpandablePanel(
                  header: Text('افكار الحصة',
                  textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                  ),
                  collapsed: Text(
                    ' رؤية المزيد',
                    
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text(
                          '   لاالااات بلا تتنا  بلا تالا اريد بلا بلا بلا',
                          softWrap: true,
                          // textAlign: TextAlign.center,
                          textDirection: TextDirection.ltr,
                        ),
                        Text(
                          '  بلا بلا بلا بلا بلا بلا',
                          softWrap: true,
                        ),
                        Text(
                          '  بلا بلا بلا بلا بلا بلا',
                          softWrap: true,
                        ),
                        Text(
                          ' بلا بلا بلا بلا بلا بلا',
                          softWrap: true,
                        ),
                        Text(
                          ' بلا بلا بلا بلا بلا بلا',
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                  // tapHeaderToExpand: true,
                  // hasIcon: true,
                ),
              ),
              Padding(
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
                    Positioned.directional(
                      textDirection: TextDirection.ltr,
                      bottom: 20,
                      end: 20,
                      child: MyFloatButton(
                        onTap: () {},
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
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
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '2024/12/9',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 10,
                      color: Colors.grey[600]),
                ),
                Flexible(
                  child: Text(
                    'اسم الطالب',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Flexible(
                  child: ReadMoreText(
                    ' محتوى التعليق .......................................................................................................................................',
                    trimMode: TrimMode.Line,
                    trimLines: 1,
                    colorClickableText: green400,
                    trimCollapsedText: 'عرض المزيد',
                    trimExpandedText: 'عرض أقل',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
