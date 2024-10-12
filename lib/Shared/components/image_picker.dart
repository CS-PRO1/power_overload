import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
Widget imagePicker(List images) {

  return StatefulBuilder(
    builder: (context, setState) {
      return Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              final pickedFile =
                  await ImagePicker().pickImage(source: ImageSource.gallery);
              if (pickedFile != null) {
                setState(() {
                  images.add(File(pickedFile.path));
                });
              }
            },
            child: Text('Pick Image from Gallery'),
          ),
          ElevatedButton(
            onPressed: () async {
              final pickedFile =
                  await ImagePicker().pickImage(source: ImageSource.camera);
              if (pickedFile != null) {
                setState(() {
                  images.add(File(pickedFile.path));
                });
              }
            },
            child: Text('Take Photo'),
          ),
          SizedBox(height: 10),
          Wrap(
            children: images.map((image) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.file(
                  image,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              );
            }).toList(),
          ),
        ],
      );
    },
  );
}
