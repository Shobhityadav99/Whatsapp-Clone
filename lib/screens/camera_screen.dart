import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class CameraScreen extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return new Center(
      child: new Text(
        "Camera",
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
}
