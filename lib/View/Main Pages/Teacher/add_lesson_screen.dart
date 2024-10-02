import 'package:flutter/material.dart';
import 'package:power_overload/Shared/components/custom_appbar.dart';
import 'package:power_overload/Shared/components/date_picker.dart';
import 'package:power_overload/Shared/components/default_button.dart';
import 'package:power_overload/Shared/components/default_textfield.dart';

class AddLessonScreen extends StatelessWidget {
  AddLessonScreen({super.key});
  var lessonnumbercontroller = TextEditingController();
  var lessonideascontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: 'اضافة حصة',
        actions: [
          AppBarPopupMenu(),
          IconButton(
            icon: Icon(Icons.file_open),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              defaultTextField(
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
              SizedBox(
                height: 30,
              ),
              defaultTextField(
                lessonnumbercontroller,
                context,
                'عنوان الحصة',
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'أدخل عنوان الحصة';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'تاريخ الحصة : ',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  datePicker(context),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                " افكار الحصة",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              defaultTextField(lessonideascontroller, context, '1.2.3....',
                  height: 6, maxLines: 300),
              SizedBox(height: 50),
              defaultButton(
                text: 'إرسال',
                function: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
