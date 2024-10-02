import 'package:flutter/material.dart';
import 'package:power_overload/Shared/constants.dart';

Widget newsCard(context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      surfaceTintColor: green100,
      clipBehavior: Clip.antiAlias,
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Image.asset('assets/logo.png',
                errorBuilder: (context, error, stackTrace) =>
                    Image.asset('images/fallback/other.jpg')),
            Container(
              height: 2,
              color: green200,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text('إعلان مهم',
                        style: Theme.of(context).textTheme.titleLarge),
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text('البيتزا اطيب اكلة في الكون',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              )),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Text(
                          '2024/04/22',
                          textAlign: TextAlign.right,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
