import 'package:flutter/material.dart';
import 'package:power_overload/Services/RBAC/role_based_widget.dart';
import 'package:power_overload/Services/RBAC/role_enum.dart';
import 'package:power_overload/Shared/components.dart';

class ComplaintsScreen extends StatelessWidget {
  const ComplaintsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'الشكاوى'),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) =>
                    catItemBuilder(context, index),
                itemCount: 40,
                separatorBuilder: (BuildContext context, int index) =>
                    Container(
                      height: 1,
                      color: Colors.grey,
                    )),
            WidgetWithRole(
              allowedRoles: [UserRole.admin],
              child: Positioned(
                bottom: 20,
                right: 20,
                child: MyFloatButton(
                  onTap: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

catItemBuilder(context, index) {
  return InkWell(
    onTap: () {},
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.download_rounded,
              color: Colors.grey,
            ),
            Flexible(
              child: Text(
                'الشكوى #001',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
