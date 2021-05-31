import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  File _image;
  final imagePicker = ImagePicker();
  Future getImage() async {
    final image = await imagePicker.getImage(source: ImageSource.camera);
    setState(() {
      _image = File(image.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    getImage();
    return new Scaffold(
        body: Center(
      child: Text("Opening Camera...."),
    ));
  }

  // body: Column(
  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //   children: <Widget>[
  //     Padding(
  //       padding: EdgeInsets.fromLTRB(50, 270, 50, 0),
  //       child:
  //           _image == null ? Text("No Image Selected") : Image.file(_image),
  //     ),
  //     Container(
  //       height: 60,
  //       width: MediaQuery.of(context).size.width,
  //       child: FlatButton(
  //         onPressed: getImage,
  //         child: Icon(
  //           Icons.camera_alt,
  //           size: 40,
  //         ),
  //         color: Theme.of(context).accentColor,
  //       ),
  //     )
  //   ],
  // ),
}
