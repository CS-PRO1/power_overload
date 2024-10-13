import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:power_overload/Shared/components/custom_appbar.dart';
import 'package:power_overload/Shared/components/date_picker.dart';
import 'package:power_overload/Shared/components/default_button.dart';
import 'package:power_overload/Shared/components/default_textfield.dart';
import 'package:power_overload/Shared/constants.dart';

class AddAnnouncementScreen extends StatelessWidget {
  AddAnnouncementScreen({super.key});

  List<File> images = [];

  TextEditingController _titlecontroller = new TextEditingController();
  TextEditingController _targetcontroller = new TextEditingController();
  TextEditingController _contentcontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'إضافة إعلان'),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    defaultTextField(_titlecontroller, context, 'العنوان'),
                    SizedBox(
                      height: 40.0,
                    ),
                    datePicker(context),
                    SizedBox(
                      height: 40.0,
                    ),
                    defaultTextField(
                      _targetcontroller,
                      context,
                      'الفئة المستهدفة',
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    defaultTextField(
                        _contentcontroller, context, 'مضمون الإعلان',
                        height: 5, maxLines: 7),
                    SizedBox(
                      height: 40.0,
                    ),
                    InkWell(
                      splashColor: green100,
                      borderRadius: BorderRadius.circular(100.0),
                      onTap: () async {
                        final pickedFile = await ImagePicker()
                            .pickImage(source: ImageSource.gallery);
                        if (pickedFile != null) {
                          images.add(File(pickedFile.path));
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'أرفق صورة',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          CircleAvatar(
                            radius: 25,
                            child: Icon(Icons.image),
                            backgroundColor: green400,
                            foregroundColor: green100,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    defaultButton(text: 'تم', function: () {}),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
