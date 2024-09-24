import 'package:flutter/material.dart';
import 'package:power_overload/View/Main%20Pages/Student/grades_screen.dart';
import 'package:power_overload/Shared/components.dart';
import 'package:power_overload/Shared/constants.dart';

class MarksScreen extends StatelessWidget {
  const MarksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          MyAppBar(title: 'الحصة الاولى', leading: AppBarPopupMenu(), actions: [
        IconButton(
          icon: Icon(Icons.picture_as_pdf_rounded),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.table_view_rounded),
          onPressed: () {},
        ),
      ]),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                width: 300,
                label: Text(
                  'اختر الصف',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              sRadio(),
              SizedBox(
                height: 30,
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
                menuHeight: 260,
                width: 300,
                label: Text(
                  'اختر الشعبة',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(
                height: 30,
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
                height: 50,
              ),
              SizedBox(
                width: 330,
                child: GridView(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    childAspectRatio: (1 / .4),
                  ),
                  children: [
                    MenuButton(
                      label: 'شفهي',
                      builder: (_) => GradesScreen(),
                    ),
                    MenuButton(
                      label: 'مذاكرة',
                      builder: (_) => GradesScreen(),
                    ),
                    MenuButton(
                      label: 'امتحان',
                      builder: (_) => GradesScreen(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
    required this.label,
    required this.builder,
  });

  final String label;
  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: OutlinedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: builder),
          );
        },
        child: Text(
          label,
          style: TextStyle(color: green400, fontSize: 16),
        ),
      ),
    );
  }
}
