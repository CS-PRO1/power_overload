import 'package:flutter/material.dart';
import 'package:power_overload/Services/RBAC/role_based_widget.dart';
import 'package:power_overload/Services/RBAC/role_enum.dart';
import 'package:power_overload/Shared/components/animated_door.dart';
import 'package:power_overload/Shared/components/custom_appbar.dart';
import 'package:power_overload/Shared/components/default_button.dart';
import 'package:power_overload/Shared/constants.dart';

class BehavioralNotes extends StatelessWidget {
  BehavioralNotes({Key? key}) : super(key: key);
  final _foldingCellKey = GlobalKey<AnimatedFoldState>();
  final _foldingCellKey2 = GlobalKey<AnimatedFoldState>();

  @override
  Widget build(BuildContext context) {
    return WidgetWithRole(
      allowedRoles: [UserRole.parent, UserRole.superadmin],
      child: Scaffold(
        appBar: customAppBar(
          title: ' الملاحظات',
          // actions: [AppBarPopupMenu()],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
          child: Container(
            child: Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: ListView.separated(
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
                    ),
                    Container(
                      width: .3,
                      color: const Color.fromARGB(255, 87, 60, 50),
                    ),
                    Expanded(
                      child: ListView.separated(
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
                    ),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: AnimatedFold(
                      positive: false,
                      key: _foldingCellKey2,
                      align: Alignment.centerRight,
                      frontWidget: InkWell(
                        onTap: () =>
                            _foldingCellKey2.currentState?.toggleFold(),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: .5,
                              color: const Color.fromARGB(255, 87, 60, 50),
                            ),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50)),
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                end: Alignment.topCenter,
                                colors: <Color>[green100, green300, green200]),
                          ),
                          //width: 16,
                          height: double.infinity,
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
                                        color: const Color.fromARGB(
                                            255, 87, 60, 50),
                                        size: 16,
                                      )),
                                ],
                              )
                            ],
                          )),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: AnimatedFold(
                      positive: true,
                      align: Alignment.centerLeft,
                      key: _foldingCellKey,
                      frontWidget: InkWell(
                        onTap: () => _foldingCellKey.currentState?.toggleFold(),
                        child: Container(
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
                          //width: 160,
                          height: double.infinity,
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
                                        color: const Color.fromARGB(
                                            255, 87, 60, 50),
                                        size: 16,
                                      )),
                                ],
                              )
                            ],
                          )),
                        ),
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

catItemBuilder(context, index) {
  return InkWell(
    onTap: () {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            var screenSize = MediaQuery.of(context).size;
            return Dialog(
              child: Container(
                // width: screenSize.width * 0.7, // 80% of screen width

                height: screenSize.height * .65, // 50% of screen height
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      ' عدم الالتزام باللباس المدرسي',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: green400),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: green200),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'الالا تسايت عمعي قصسبي قلثل ثقفسل عغعتت هعغغث  نال  سبيلغا قث فثق بل ث ث ق ل ابي  يسليساا ا اا اانتنتنتنت اعلل يقبي اتا  ا نتا  نت انت  ت ن اسايت عمعي قصسبي قلثل ثقفسل عغعتت هعغغث  نال  سبيلغا قث فثق بل ث ث ق ل ابي  يسليساا ا اا اانتنتنتنت اعلل يقبي ا   ن اتن  انت ان تن اتن ات ا سيترت تنتا تاتابي اعي سعارهلات يعر اعقابتسي قابتيتب العهياتبل هعاقلايب هعالخيابل قالاي عاقلابي هايبلهتبيىت قلىيىبنتلى هتقلهتيب ختلهخبتي ',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    defaultButton(
                      text: 'تم',
                      function: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ),
            );
          });
    },
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            // SizedBox(
            //   width: 16,
            // ),
            Text(
              ' عدم الالتزام باللباس المدرسي',
              // overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '2024/12/9',
              style: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 10,
                  color: Colors.grey[600]),
            ),
            // SizedBox(
            //   width: 16,
            // ),
          ],
        ),
      ),
    ),
  );
}
