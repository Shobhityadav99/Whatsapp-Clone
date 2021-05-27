import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/call_screen.dart';
import 'package:whatsapp_clone/screens/camera_screen.dart';
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

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double yourWidth = width / 5;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Whatsapp"),
        elevation: 0.7,
        bottom: TabBar(
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.label,
          isScrollable: true,
          controller: _tabController,
          tabs: <Widget>[
            Container(
              width: 20,
              height: 50,
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.camera_alt,
              ),
            ),
            Container(
                width: yourWidth,
                height: 50,
                alignment: Alignment.center,
                child: Text("CHATS")),
            Container(
                width: yourWidth,
                height: 50,
                alignment: Alignment.center,
                child: Text("STATUS")),
            Container(
                width: yourWidth,
                height: 50,
                alignment: Alignment.center,
                child: Text("CALLS"))
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
          new CameraScreen(),
          new ChatScreen(),
          new StatusScreen(),
          new CallScreen(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: null,
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
