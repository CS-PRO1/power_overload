import 'package:flutter/material.dart';
import 'package:power_overload/components.dart';

class GradesDetailsScreen extends StatelessWidget {
  const GradesDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'مادة الرياضيات',
        leading: AppBarPopupMenu(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('الفصل الاول')
            ],
          ),
        ),
      ),
    );
  }
}
