import 'package:flutter/material.dart';
import 'package:power_overload/View/Main%20Pages/Student/grades_details_screen.dart';
//import 'package:power_overload/View/Main%20Pages/grades_details_screen.dart';
import 'package:power_overload/Shared/components.dart';
import 'package:power_overload/Shared/constants.dart';

class GradesScreen extends StatelessWidget {
  const GradesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'العلامات',
        leading: AppBarPopupMenu(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 150,
                ),
                DropdownMenu(
                  dropdownMenuEntries: <DropdownMenuEntry<String>>[
                    DropdownMenuEntry(value: 'BL1', label: 'الفصل الاول'),
                    DropdownMenuEntry(value: 'BL2', label: 'الفصل الثاني'),
                  ],
                  // menuStyle: MenuStyle(shape: Radius),
                  menuHeight: 260,
                  width: 300,
                  label: Text(
                    'اختر الفصل',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                DropdownMenu(
                  dropdownMenuEntries: <DropdownMenuEntry<String>>[
                    DropdownMenuEntry(value: 'BL1', label: 'الرياضيات'),
                    DropdownMenuEntry(value: 'BL2', label: 'اللغة العربية'),
                    DropdownMenuEntry(value: 'BL3', label: 'التاريخ'),
                    DropdownMenuEntry(value: 'BL4', label: 'الجغرافيا'),
                    DropdownMenuEntry(value: 'A1', label: 'اللغة الإنجليزية'),
                    DropdownMenuEntry(value: 'A2', label: 'علوم الحاسوب'),
                    DropdownMenuEntry(value: 'A3', label: 'الفيزياء'),
                    DropdownMenuEntry(value: 'A3', label: 'الكيمياء'),
                    DropdownMenuEntry(value: 'A3', label: 'الفلسفة'),
                    DropdownMenuEntry(value: 'A3', label: 'الفيزياء'),
                    DropdownMenuEntry(value: 'A3', label: 'اللغة الفرنسية'),
                    // 'الرياضيات',
                    // 'العلوم',
                    // 'اللغة العربية',
                    // 'التاريخ',
                    // 'الجغرافيا',
                    // 'اللغة الإنجليزية',
                    // 'علوم الحاسوب',
                    // 'الفيزياء',
                    // 'الكيمياء',
                    // 'الفلسفة',
                    // 'اللغة الفرنسية'
                  ],
                  // menuStyle: MenuStyle(shape: Radius),
                  menuHeight: 260,
                  width: 300,
                  label: Text(
                    'اختر المادة',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                defaultButton(
                  text: 'تم',
                  textsize: 16,
                  function: () {
                    //TODO Login Request Function
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => GradesDetailsScreen()));
                  },
                ),
                SizedBox(
                  height: 200,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: green400,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    height: 50,
                    width: 200,
                    child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.download,
                              color: green50,
                            ),
                            Text(
                              'تنزيل الجلاء المدرسي',
                              style: TextStyle(color: green50),
                            )
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
