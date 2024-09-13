import 'package:flutter/material.dart';
import 'package:power_overload/components.dart';

class LessonsScreen extends StatelessWidget {
  const LessonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'حصص المادة',
        leading: AppBarPopupMenu(),
      ),
    );
  }
}
