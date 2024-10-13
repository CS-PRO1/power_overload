import 'package:flutter/material.dart';
import 'package:power_overload/Shared/components.dart';
import 'package:power_overload/Shared/components/custom_appbar.dart';
import 'package:power_overload/Shared/components/date_picker.dart';
import 'package:power_overload/Shared/components/default_textfield.dart';
import 'package:power_overload/Shared/constants.dart';
import 'package:searchable_listview/searchable_listview.dart';

class AttendanceCheckScreen extends StatelessWidget {
  AttendanceCheckScreen({super.key});

  List students = [
    {
      'att': 'موجود',
      'name': 'الطالب',
      'abs': 'الغيابات',
      'reasoned': 'مبرر',
    },
    {
      'att': true,
      'name': 'لين مشلح',
      'abs': 0,
      'reasoned': true,
    },
    {
      'att': true,
      'name': 'محمد ميسر السعيد',
      'abs': 0,
      'reasoned': false,
    },
    {
      'att': true,
      'name': 'راما بنور',
      'abs': 10,
      'reasoned': true,
    },
    {
      'att': true,
      'name': 'محمود مشلح',
      'abs': 0,
      'reasoned': true,
    },
    {
      'att': true,
      'name': 'نغم عزام',
      'abs': 30,
      'reasoned': true,
    },
    {
      'att': true,
      'name': 'حسام السيد خليل',
      'abs': 0,
      'reasoned': true,
    },
    {
      'att': true,
      'name': 'رقية الجاموس',
      'abs': 100,
      'reasoned': true,
    },
    {
      'att': true,
      'name': 'محمد وسام حسين',
      'abs': 3,
      'reasoned': true,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'الحضور'),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            datePicker(context),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                DropdownMenu(
                  dropdownMenuEntries: <DropdownMenuEntry<String>>[
                    DropdownMenuEntry(value: 'BL1', label: 'السابع'),
                    DropdownMenuEntry(value: 'BL2', label: 'الثامن'),
                    DropdownMenuEntry(value: 'BL3', label: 'التاسع'),
                    DropdownMenuEntry(value: 'BL4', label: 'الاول الثانوي'),
                    DropdownMenuEntry(value: 'A1', label: 'الثاني الثانوي'),
                    DropdownMenuEntry(value: 'A2', label: 'الثالث الثانوي'),
                  ],
                  // menuStyle: MenuStyle(shape: Radius),
                  menuHeight: 350,
                  width: 150,
                  label: Text(
                    'الصف',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                DropdownMenu(
                  dropdownMenuEntries: <DropdownMenuEntry<String>>[
                    DropdownMenuEntry(value: 'BL1', label: 'الاولى'),
                    DropdownMenuEntry(value: 'BL2', label: 'الثانية'),
                    DropdownMenuEntry(value: 'BL3', label: 'الثالثة'),
                    DropdownMenuEntry(value: 'BL4', label: 'الرابعة '),
                    DropdownMenuEntry(value: 'A1', label: 'الخامسة'),
                  ],
                  // menuStyle: MenuStyle(shape: Radius),
                  menuHeight: 350,
                  width: 150,
                  label: Text(
                    'الشعبة',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              color: green300,
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: SearchableList(
                displaySearchIcon: true,
                initialList: students,
                itemBuilder: (student) => catItemBuilder(context, student),
                filter: (value) => students
                    .where(
                      (element) => element['name'].contains(value),
                    )
                    .toList(),
                emptyWidget: Center(
                  child: Text('لم يتم العثور على نتيجة'),
                ),
                inputDecoration: InputDecoration(
                    labelText: "ابحث عن طالب",
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 2.0),
                        borderRadius: StandardBorderRadius),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: green300, width: 3.0),
                      borderRadius: ActiveBorderRadius,
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.redAccent, width: 2.0),
                      borderRadius: ActiveBorderRadius,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

catItemBuilder(context, student) {
  ValueNotifier<bool> _isReasoned = ValueNotifier<bool>(
      student['reasoned'] is bool ? student['reasoned'] : false);
  TextEditingController _reasonedcontroller = TextEditingController();

  return Column(
    children: [
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              student['att'] is bool
                  ? Checkbox(
                      value: student['att'],
                      onChanged: (value) {},
                    )
                  : Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          student['att'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
              SizedBox(
                width: 15,
              ),
              SizedBox(
                width: 150,
                child: Text(
                  student['name'],
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
              ),
              Flexible(
                child: Text(
                  student['abs'].toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              student['reasoned'] is bool
                  ? Checkbox(
                      value: student['reasoned'],
                      onChanged: student['att']
                          ? (value) {
                              value == null ? value = false : value = !value;
                            }
                          : null,
                    )
                  : Row(
                      children: [
                        Text(
                          student['reasoned'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
      AnimatedBuilder(
          animation: _isReasoned,
          builder: (context, child) => _isReasoned.value
              ? defaultTextField(_reasonedcontroller, context, 'التبرير: ')
              : Container()),
    ],
  );
}
