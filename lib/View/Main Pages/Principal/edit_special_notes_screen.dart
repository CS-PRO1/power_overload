import 'package:flutter/material.dart';
import 'package:power_overload/Shared/components/custom_appbar.dart';
import 'package:power_overload/Shared/components/default_button.dart';
import 'package:power_overload/Shared/components/default_textfield.dart';
import 'package:power_overload/Shared/constants.dart';

class EditSpecialNotesScreen extends StatelessWidget {
  EditSpecialNotesScreen({super.key});
  final List<String> _socialStatus = [
    'سليم',
    'يتيم',
    'منفصل الوالدين',
  ];

  String _currentSocialStatus = 'سليم';
  TextEditingController _socialStatusDetails = new TextEditingController();

  final List<String> _medicalStatus = [
    'سليم',
    'مرض خفيف',
    'حالة حرجة',
  ];
  String _currentMedicalStatus = 'سليم';
  TextEditingController _medicalStatusDetails = new TextEditingController();

  final List<String> _financialStatus = [
    'شديد الفقر',
    'فقير',
    'متوسط',
    'غني',
    'شديد الغنى',
  ];
  String _currentfinancialStatus = 'متوسط';
  TextEditingController _financialStatusDetails = new TextEditingController();

  bool _supportsSchool = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'الملاحظات الخاصة'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              buildSection(context, 'الحالة الاجتماعية', _socialStatus,
                  _currentSocialStatus,
                  controller: _socialStatusDetails),
              SizedBox(
                height: 10,
              ),
              buildSection(context, 'الحالة الصحية', _medicalStatus,
                  _currentMedicalStatus,
                  controller: _medicalStatusDetails),
              SizedBox(
                height: 10,
              ),
              buildSection(context, 'الحالة المادية', _financialStatus,
                  _currentfinancialStatus,
                  controller: _financialStatusDetails),
              SizedBox(
                height: 10,
              ),
              buildSection(
                  context, 'داعم للمدرسة', [true, false], _supportsSchool),
              SizedBox(height: 20),
              defaultButton(text: 'موافق', function: () {}),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSection(
      BuildContext context, String title, List options, dynamic currentValue,
      {TextEditingController? controller}) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: green100,
          border: Border.all(
            color: green200,
            width: 2,
          )),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 5),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                childAspectRatio: (1 / .3),
              ),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: options.length,
              itemBuilder: (context, index) =>
                  radioBuilder(index, options, currentValue),
            ),
            SizedBox(
              height: 5,
            ),
            controller != null
                ? defaultTextField(controller, context, 'تفاصيل',
                    height: 3, maxLines: 5)
                : Container(),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }

  Widget radioBuilder(int index, List activelist, dynamic curValue) {
    return Row(
      children: [
        Radio(
          value: activelist[index],
          groupValue: curValue,
          onChanged: (value) {
            curValue = value!;
          },
        ),
        Text(activelist[index] is bool
            ? activelist[index]
                ? 'نعم'
                : 'لا'
            : activelist[index]),
      ],
    );
  }
}
