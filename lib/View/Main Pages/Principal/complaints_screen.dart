import 'package:flutter/material.dart';
import 'package:power_overload/Shared/components/animated_door.dart';
import 'package:power_overload/Shared/components/custom_appbar.dart';
import 'package:power_overload/Shared/components/default_button.dart';
import 'package:power_overload/Shared/constants.dart';

class ComplaintsScreen1 extends StatelessWidget {
  ComplaintsScreen1({super.key});

  final _foldingCellKey = GlobalKey<AnimatedFoldState>();
  final _foldingCellKey2 = GlobalKey<AnimatedFoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: ' الشكاوى',
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
                      onTap: () => _foldingCellKey2.currentState?.toggleFold(),
                      child: Container(
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
                        //width: 16,
                        height: double.infinity,
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'شكاوى ولي الأمر',
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
                              'شكاوى الطالب',
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
                  ),
                ),
              ]),
            ],
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
          builder: (context) => Dialog(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'تفاصيل الشكوى',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          SingleChildScrollView(
                            child: Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    width: 2,
                                    color: green200,
                                  )),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('مقدم الشكوى: علتان العلتاني'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('تاريخ الشكوى: ' +
                                      DateTime.now()
                                          .toString()
                                          .substring(0, 11)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('الساعة: ' +
                                      DateTime.now()
                                          .toString()
                                          .substring(11, 16)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('محتوى الشكوى:'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      'البيتزا عجينتها رقيقة كتير ومقرمدة وكتشبها قليل و فيها فليفلة خضرا كتير لو عم اكل سلطة على خبز يابس لسا اطيبالبيتزا عجينتها رقيقة كتير ومقرمدة وكتشبها قليل و فيها فليفلة خضرا كتير لو عم اكل سلطة على خبز يابس لسا اطيبالبيتزا عجينتها رقيقة كتير ومقرمدة وكتشبها قليل و فيها فليفلة خضرا كتير لو عم اكل سلطة على خبز يابس لسا اطيبالبيتزا عجينتها رقيقة كتير ومقرمدة وكتشبها قليل و فيها فليفلة خضرا كتير لو عم اكل سلطة على خبز يابس لسا اطيبالبيتزا عجينتها رقيقة كتير ومقرمدة وكتشبها قليل و فيها فليفلة خضرا كتير لو عم اكل سلطة على خبز يابس لسا اطيبالبيتزا عجينتها رقيقة كتير ومقرمدة وكتشبها قليل و فيها فليفلة خضرا كتير لو عم اكل سلطة على خبز يابس لسا اطيبالبيتزا عجينتها رقيقة كتير ومقرمدة وكتشبها قليل و فيها فليفلة خضرا كتير لو عم اكل سلطة على خبز يابس لسا اطيبالبيتزا عجينتها رقيقة كتير ومقرمدة وكتشبها قليل و فيها فليفلة خضرا كتير لو عم اكل سلطة على خبز يابس لسا اطيبالبيتزا عجينتها رقيقة كتير ومقرمدة وكتشبها قليل و فيها فليفلة خضرا كتير لو عم اكل سلطة على خبز يابس لسا اطيبالبيتزا عجينتها رقيقة كتير ومقرمدة وكتشبها قليل و فيها فليفلة خضرا كتير لو عم اكل سلطة على خبز يابس لسا اطيبالبيتزا عجينتها رقيقة كتير ومقرمدة وكتشبها قليل و فيها فليفلة خضرا كتير لو عم اكل سلطة على خبز يابس لسا اطيبالبيتزا عجينتها رقيقة كتير ومقرمدة وكتشبها قليل و فيها فليفلة خضرا كتير لو عم اكل سلطة على خبز يابس لسا اطيبالبيتزا عجينتها رقيقة كتير ومقرمدة وكتشبها قليل و فيها فليفلة خضرا كتير لو عم اكل سلطة على خبز يابس لسا اطيبالبيتزا عجينتها رقيقة كتير ومقرمدة وكتشبها قليل و فيها فليفلة خضرا كتير لو عم اكل سلطة على خبز يابس لسا اطيبالبيتزا عجينتها رقيقة كتير ومقرمدة وكتشبها قليل و فيها فليفلة خضرا كتير لو عم اكل سلطة على خبز يابس لسا اطيب'),
                                  SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          defaultButton(
                              text: 'تم',
                              function: () {
                                Navigator.pop(context);
                              })
                        ],
                      ),
                    ),
                  ),
                ),
              ));
    },
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'الاسم',
              // overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    ),
  );
}
