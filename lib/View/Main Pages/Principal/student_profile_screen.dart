import 'package:buildcondition/buildcondition.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:power_overload/Shared/components/custom_appbar.dart';
import 'package:power_overload/Shared/constants.dart';

class StudentProfileScreen extends StatelessWidget {
  StudentProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    itemBuilder(Map<String, String> catinfo) {
      return Column(
        children: catinfo.entries.map((entry) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(entry.key,
                        style: TextStyle(
                          fontSize: 20,
                          color: green300,
                        )),
                    Text(entry.value,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 20,
                        )),
                  ],
                ),
              ),
              Container(
                height: 1,
                color: green150,
              )
            ],
          );
        }).toList(),
      );
    }

    return Scaffold(
      backgroundColor: bglight,
      appBar: customAppBar(
        title: ' الملف الشخصي',
      ),
      body: BuildCondition(
          condition: true,
          fallback: (context) => Center(child: CircularProgressIndicator()),
          builder: (context) {
            List<Map<String, dynamic>> _profileInfo = [
              {
                'cattitle': 'معلومات شخصية',
                'catinfo': {
                  'اسم الطالب': 'رقية',
                  'اللقب': 'الجاموس',
                  'الهاتف': '093932874634',
                  'الجنسية': 'سوري',
                  'تاريح الولادة': '26.11.2022',
                  'مكان الولادة': 'النبك',
                  'رقم القيد': '122',
                  'محل القيد': 'النبك',
                  'القيد السابق': '-',
                },
              },
              {
                'cattitle': 'معلومات دراسية',
                'catinfo': {
                  'تاريخ الانتساب': '202',
                  'المدرسة التي انتقل منها': 'رقية',
                  'الصفوف التي رسب بها': 'رقية',
                  'الصف الذي انتسب إليه': 'رقية',
                },
              },
              {
                'cattitle': 'معلومات التطبيق',
                'catinfo': {
                  'رمز دخول الطالب': '963852',
                  'رمز دخول ولي الأمر': '741852',
                },
              },
              {
                'cattitle': 'ملاحظات خاصة',
                'catinfo:': {
                  'الحالة الاجتماعية': 'سليم',
                  'الحالة الصحية': 'سليم',
                  'الحالة المادية': 'متوسط',
                  'داعم للمدرسة': 'نعم',
                }
              }
            ];
            return SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 80,
                                        backgroundImage: NetworkImage(''),
                                        onBackgroundImageError: (exception,
                                                stackTrace) =>
                                            Image.asset(
                                                'assets/images/fallback/user_default.jpg'),
                                      ),
                                      SizedBox(height: 20),
                                      ListView.separated(
                                          physics: BouncingScrollPhysics(),
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) => Card(
                                                color: green100,
                                                surfaceTintColor: green300,
                                                shadowColor: green100,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      16.0),
                                                  child: ExpandablePanel(
                                                      header: Text(
                                                        _profileInfo[index]
                                                            ['cattitle'],
                                                        style: TextStyle(
                                                            fontSize: 20),
                                                      ),
                                                      collapsed: Container(),
                                                      expanded: itemBuilder(
                                                          _profileInfo[index]
                                                              ['catinfo'])),
                                                ),
                                              ),
                                          separatorBuilder: (context, index) =>
                                              SizedBox(
                                                height: 3,
                                              ),
                                          itemCount: _profileInfo.length),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ])),
                          )
                        ])));
          }),
    );
  }
}
