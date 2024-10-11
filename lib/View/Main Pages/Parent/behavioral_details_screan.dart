import 'package:flutter/material.dart';
import 'package:power_overload/Shared/components/custom_appbar.dart';
import 'package:power_overload/Shared/components/default_button.dart';
import 'package:power_overload/Shared/constants.dart';
class BehavioralDetailsScrean extends StatelessWidget {
  const BehavioralDetailsScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
       appBar: customAppBar(
        title: ' الملاحظات',
        // actions: [AppBarPopupMenu()],
      ),
      body:  Column(
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('العقوبة : '),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text('فصل يوم'),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Column(
                                children: [
                                  Text('النتيجة : '),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Container(
                                    //  width: 200,
                                    // height: 100,
                                    child: Text(
                                      ' ر اعقابتسي قابتيتب العهياتبل هعاقلايب هعالخيابل قالاي عاقلابي هايبلهتبيىت قلىيىبنتلى هتقلهتيب ختله',
                                      // overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: green200),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                'اسم الموجه : ',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'ابو منجل',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
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
    );
  }
}