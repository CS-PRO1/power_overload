import 'package:flutter/material.dart';
import 'package:power_overload/Shared/components.dart';

class AddLessonScreen extends StatelessWidget {
   AddLessonScreen({super.key});
  var lessonnumbercontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'اضافة حصة',
        actions: [AppBarPopupMenu()],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           myTextField(
            lessonnumbercontroller,
            context,
            'الحصة',
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value!.isEmpty) {
                return 'أدخل رقم الحصة';
              }
              return null;
            },
          ),SizedBox(height: 30,),
              myTextField(
            lessonnumbercontroller,
            context,
            'الحصة',
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value!.isEmpty) {
                return 'أدخل رقم الحصة';
              }
              return null;
            },
          ),
      ],),
    );
  }
}
