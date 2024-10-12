import 'package:choice/choice.dart';
import 'package:flutter/material.dart';
import 'package:power_overload/Shared/components/custom_appbar.dart';
import 'package:power_overload/Shared/components/date_picker.dart';
import 'package:power_overload/Shared/components/default_button.dart';
import 'package:power_overload/Shared/components/default_textfield.dart';
import 'package:power_overload/Shared/constants.dart';

class AddBehavioralNote extends StatelessWidget {
  AddBehavioralNote({super.key});
  bool _isBehavioral = false;

  List choices = ['Behavioral', 'Educational'];

  TextEditingController _notetypecontroller = new TextEditingController();
  TextEditingController _rulingcontroller = new TextEditingController();
  TextEditingController _summarycontroller = new TextEditingController();
  TextEditingController _detailscontroller = new TextEditingController();
  TextEditingController _teachernamecontroller = new TextEditingController();
  TextEditingController _subjectnamecontroller = new TextEditingController();
  TextEditingController _lessoncontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: 'إضافة ملاحظة',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'اختر نوع الملاحظة',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  child: InlineChoice<bool>.single(
                      value: _isBehavioral,
                      onChanged: (value) {
                        value == null ? value = false : value = value;
                        _isBehavioral = value;
                      },
                      clearable: false,
                      itemCount: choices.length,
                      itemBuilder: (state, i) {
                        return ChoiceChip(
                          selected: state.selected(
                              choices[i] == 'Behavioral' ? true : false),
                          onSelected: state.onSelected(
                              choices[i] == 'Behavioral' ? true : false),
                          label: Text(choices[i]),
                        );
                      },
                      listBuilder: ChoiceList.createWrapped(
                          runAlignment: WrapAlignment.center,
                          alignment: WrapAlignment.center,
                          direction: Axis.horizontal,
                          textDirection: TextDirection.rtl,
                          //spacing: 10,
                          //runSpacing: 10,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 5,
                          ))),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 1,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 20,
                ),
                !_isBehavioral
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          children: [
                            defaultTextField(
                                _teachernamecontroller, context, 'اسم المدرس'),
                            SizedBox(height: 10),
                            defaultTextField(
                                _subjectnamecontroller, context, 'المادة'),
                            SizedBox(height: 10),
                            defaultTextField(
                              _lessoncontroller,
                              context,
                              'رقم الحصة',
                              keyboardType: TextInputType.numberWithOptions(),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      )
                    : Container(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      defaultTextField(
                          _notetypecontroller, context, 'نوع الملاحظة'),
                      SizedBox(height: 10),
                      defaultTextField(_rulingcontroller, context, 'العقوبة'),
                      SizedBox(height: 10),
                      defaultTextField(_summarycontroller, context, 'النتيجة'),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                Column(
                  children: [
                    datePicker(context),
                    SizedBox(height: 20),
                    InkWell(
                      splashColor: green100,
                      borderRadius: BorderRadius.circular(100.0),
                      onTap: () {},
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
                            child: Icon(Icons.camera_alt),
                            backgroundColor: green400,
                            foregroundColor: green100,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    defaultTextField(_detailscontroller, context, 'تفاصيل',
                        height: 5, maxLines: 5),
                    SizedBox(
                      height: 20,
                    ),
                    defaultButton(text: 'إضافة', function: () {})
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
