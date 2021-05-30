import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_clone/screens/call_screen.dart';
// import 'package:whatsapp_clone/screens/camera_screen.dart';
import 'package:whatsapp_clone/screens/chat_screen.dart';
import 'package:whatsapp_clone/screens/status_screen.dart';

class WhatsappHome extends StatefulWidget {
  @override
  _WhatsappHomeState createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

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
    double orjWidth = MediaQuery.of(context).size.width;
    double cameraWidth = orjWidth / 24;
    double yourWidth = (orjWidth - cameraWidth) / 5;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Whatsapp"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          labelPadding: EdgeInsets.symmetric(
              horizontal: (orjWidth - (cameraWidth + yourWidth * 3)) / 8),
          isScrollable: true,
          tabs: [
            Container(
              child: Tab(icon: Icon(Icons.camera_alt)),
              width: cameraWidth,
            ),
            Container(
              child: Tab(
                text: "CHATS",
              ),
              width: yourWidth,
            ),
            Container(
              child: Tab(
                text: "STATUS",
              ),
              width: yourWidth,
            ),
            Container(
              child: Tab(
                text: "CALLS",
              ),
              width: yourWidth,
            ),
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0)),
          new Icon(Icons.more_vert)
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 270, 50, 0),
                  child: _image == null
                      ? Text("No Image Selected")
                      : Image.file(_image),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: FlatButton(
                    onPressed: getImage,
                    child: Icon(
                      Icons.camera_alt,
                      size: 40,
                    ),
                    color: Theme.of(context).accentColor,
                  ),
                )
              ],
            ),
          ),
          new ChatScreen(),
          new StatusScreen(),
          new CallScreen(),
        ],
      ),
      // floatingActionButton: new FloatingActionButton(
      //   onPressed: null,
      //   backgroundColor: Theme.of(context).accentColor,
      //   child: new Icon(
      //     Icons.message,
      //     color: Colors.white,
      //   ),
      // ),
    );
  }
}
