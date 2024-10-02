import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:power_overload/Services/RBAC/role_based_widget.dart';
import 'package:power_overload/Services/RBAC/role_enum.dart';
import 'package:power_overload/Shared/components/custom_appbar.dart';
import 'package:power_overload/Shared/components/default_button.dart';
import 'package:power_overload/Shared/components/default_textfield.dart';
import 'package:power_overload/Shared/components/float_button.dart';
import 'package:power_overload/Shared/constants.dart';
//import 'package:readmore/readmore.dart';
import 'package:readmore/readmore.dart';

class LessonDetailsScreen extends StatelessWidget {
  LessonDetailsScreen({super.key});
  TextEditingController _newcommentcontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'الحصة الاولى', actions: [
        IconButton(
          icon: Icon(Icons.file_open),
          onPressed: () {},
        ),
        AppBarPopupMenu(),
      ]),
      body: Stack(
        children: [
          SingleChildScrollView(
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
                      header: Text(
                        'افكار الحصة',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontSize: 20),
                      ),
                      collapsed: SizedBox(
                        height: 0,
                      ),
                      expanded: Container(
                        width: double.infinity,
                        child: Column(
                          children: [
                            Text(
                              '   لاالااات بلا تتنا  بلا تالا اريد بلا بلا بلا',
                              softWrap: true,
                              // textAlign: TextAlign.center,
                              //textDirection: TextDirection.ltr,
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
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: green150, width: 3),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: <Color>[green300, green100]),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'تقييم الحصة : 3.2',
                              style: TextStyle(
                                  color: green300,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            WidgetWithRole(
                              allowedRoles: [
                                UserRole.superadmin,
                                UserRole.student
                              ],
                              child: RatingStars(
                                value: 3,
                                starColor: green300,
                                starOffColor: green100,
                                starSize: 20,
                                valueLabelVisibility: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ListView.separated(
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
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatButton(
              icon: Icons.add_comment_rounded,
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => Dialog(
                          child: Container(
                            height: 350,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'إضافة تعليق',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  defaultTextField(_newcommentcontroller,
                                      context, 'نص التعليق',
                                      height: 4, maxLines: 5),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  defaultButton(text: 'إرسال', function: () {})
                                ],
                              ),
                            ),
                          ),
                        ));
              },
            ),
          )
        ],
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
                Flexible(
                  child: Text(
                    'اسم الطالب',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: green300),
                  ),
                ),
                Text(
                  '2024/12/9',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 12,
                      color: Colors.grey[600]),
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
                    trimExpandedText: '',
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
