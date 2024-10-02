import 'package:flutter/material.dart';
import 'package:power_overload/Shared/components/custom_appbar.dart';
import 'package:power_overload/Shared/components/default_button.dart';
import 'package:power_overload/Shared/components/default_textfield.dart';
import 'package:power_overload/Shared/components/float_button.dart';
import 'package:power_overload/Shared/constants.dart';

class ComplaintsScreen extends StatelessWidget {
  ComplaintsScreen({super.key});
  TextEditingController newcomplaintcontroller = TextEditingController();
  bool isAnonymous = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'الشكاوى'),
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
            Positioned(
              bottom: 20,
              right: 20,
              child: FloatButton(
                icon: Icons.add_circle_outlined,
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: green100,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "أرسل شكوى",
                                style: TextStyle(fontSize: 25),
                              ),
                              SizedBox(height: 20),
                              defaultTextField(
                                  newcomplaintcontroller, context, 'نص الشكوى',
                                  height: 6, maxLines: 6),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('إرسال كمجهول'),
                                  Checkbox(
                                      value: isAnonymous,
                                      onChanged: (value) {
                                        value = !value!;
                                        isAnonymous = !isAnonymous;
                                      }),
                                ],
                              ),
                              SizedBox(height: 20),
                              defaultButton(
                                text: 'إرسال',
                                function: () {},
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
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
            Flexible(
              child: Text(
                'الشكوى #001',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
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
