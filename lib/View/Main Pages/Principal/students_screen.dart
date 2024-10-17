import 'package:flutter/material.dart';
import 'package:power_overload/Shared/components/custom_appbar.dart';

import 'package:power_overload/Shared/constants.dart';
import 'package:searchable_listview/searchable_listview.dart';

class StudentsScreen extends StatelessWidget {
  StudentsScreen({super.key});

  List students = [
    {
      'name': 'لين مشلح',
    },
    {
      'name': 'محمد ميسر السعيد',
    },
    {
      'name': 'راما بنور',
    },
    {
      'name': 'محمود مشلح',
    },
    {
      'name': 'نغم عزام',
    },
    {
      'name': 'حسام السيد خليل',
    },
    {
      'name': 'رقية الجاموس',
    },
    {
      'name': 'محمد وسام حسين',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: ' الطلاب',
        // actions: [AppBarPopupMenu()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
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
  return Column(
    children: [
      Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              width: 300,
              child: Text(
                student['name'],
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16,),textAlign: TextAlign.center,
              ),
            ),
          ))
    ],
  );
}