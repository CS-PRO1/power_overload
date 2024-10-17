import 'package:flutter/material.dart';
import 'package:power_overload/Services/RBAC/role_based_widget.dart';
import 'package:power_overload/Services/RBAC/role_enum.dart';
import 'package:power_overload/Shared/components/custom_appbar.dart';
import 'package:power_overload/Shared/components/float_button.dart';
import 'package:power_overload/Shared/components/news_card.dart';
import 'package:power_overload/View/Main%20Pages/Principal/add_announcement_screen.dart';

class AnnouncementsScreen extends StatelessWidget {
  const AnnouncementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'الإعلانات'),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            ListView.builder(
              padding: EdgeInsets.all(20),
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) => newsCard(context),
              shrinkWrap: true,
              itemCount: 10,
            ),
            WidgetWithRole(
              allowedRoles: [UserRole.principle],
              child: Positioned(
                bottom: 20,
                right: 20,
                child: FloatButton(
                  icon: Icons.add,
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AddAnnouncementScreen()));
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
