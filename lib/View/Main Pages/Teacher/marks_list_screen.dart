import 'package:flutter/material.dart';
import 'package:power_overload/Shared/components.dart';
import 'package:power_overload/Shared/constants.dart';
import 'package:searchable_listview/searchable_listview.dart';

class MarksListScreen extends StatelessWidget {
  MarksListScreen({super.key});

  List marks = [
    {'name': 'لين مشلح', 'grade': 85},
    {'name': 'محمد ميسر السعيد', 'grade': 86},
    {'name': 'راما بنور', 'grade': 75},
    {'name': 'محمود مشلح', 'grade': 88},
    {'name': 'نغم عزام', 'grade': 100},
    {'name': 'حسام السيد خليل', 'grade': 91},
    {'name': 'رقية الجاموس', 'grade': 80},
    {'name': 'محمد وسام حسين', 'grade': 70},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(title: 'العلامات', actions: [AppBarPopupMenu()]),
        body: Padding(
            padding: EdgeInsets.all(20.0),
            child: SearchableList(
              displaySearchIcon: true,
              initialList: marks,
              itemBuilder: (mark) => catItemBuilder(context, mark),
              filter: (value) => marks
                  .where(
                    (element) => element['name'].toLowerCase().contains(value),
                  )
                  .toList(),
              emptyWidget: Center(
                child: Text('لم يتم العثور على نتيجة'),
              ),
              inputDecoration: InputDecoration(
                  labelText: "ابحث عن طالب",
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 2.0),
                      borderRadius: StandardBorderRadius),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: green300, width: 3.0),
                    borderRadius: ActiveBorderRadius,
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.redAccent, width: 2.0),
                    borderRadius: ActiveBorderRadius,
                  )),
            )));
  }
}

catItemBuilder(context, mark) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 150,
            child: Text(
              mark['name'],
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
          ),
          Flexible(
            child: Text(
              mark['grade'].toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit,
              color: green300,
            ),
          ),
        ],
      ),
    ),
  );
}
