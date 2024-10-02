import 'package:flutter/material.dart';
import 'package:power_overload/Services/Cache/cache_helper.dart';
import 'package:power_overload/Services/RBAC/role_enum.dart';

class WidgetWithRole extends StatelessWidget {
  WidgetWithRole(
      {Key? key,
      required this.child,
      required List<UserRole> this.allowedRoles})
      : super(key: key);

  UserRole role = UserRole.fromJson(CacheHelper.get('role'));
  final List<UserRole> allowedRoles;

  final Widget child;
  @override
  Widget build(BuildContext context) {
    if (allowedRoles.contains(role)) {
      return child;
    }
    return Container();
  }
}
