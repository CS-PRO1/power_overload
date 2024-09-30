import 'package:flutter/material.dart';
import 'package:power_overload/Services/RBAC/role_based_widget.dart';
import 'package:power_overload/Services/RBAC/role_enum.dart';
import 'package:power_overload/Shared/components.dart';
import 'package:power_overload/Shared/constants.dart';

class BehavioralNotes extends StatelessWidget {
  BehavioralNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetWithRole(
      allowedRoles: [UserRole.manager],
      child: Scaffold(
          appBar: MyAppBar(
            title: ' الملاحظات',
            // actions: [AppBarPopupMenu()],
          ),
          body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: .5,
                        color: const Color.fromARGB(255, 87, 60, 50),
                      ),
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(50)),
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          end: Alignment.topCenter,
                          colors: <Color>[green100, green300, green200]),
                    ),
                    width: 160,
                    height: double.infinity,
                    child: InkWell(
                      onTap: () {},
                      child: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'الملاحظات السلوكية',
                            style: TextStyle(fontSize: 16),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 80,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.circle,
                                    color:
                                        const Color.fromARGB(255, 87, 60, 50),
                                    size: 16,
                                  )),
                            ],
                          )
                        ],
                      )),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: .5,
                        color: const Color.fromARGB(255, 87, 60, 50),
                      ),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(50)),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[green200, green300, green100]),
                    ),
                    width: 160,
                    height: double.infinity,
                    child: InkWell(
                      onTap: () {},
                      child: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'الملاحظات الاجتهادية',
                            style: TextStyle(fontSize: 16),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 25,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.circle,
                                    color:
                                        const Color.fromARGB(255, 87, 60, 50),
                                    size: 16,
                                  )),
                            ],
                          )
                        ],
                      )),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
