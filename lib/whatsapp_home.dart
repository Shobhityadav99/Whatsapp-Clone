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
          VertMenu(),
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

class VertMenu extends StatelessWidget {
  const VertMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      child: Icon(Icons.more_vert),
      itemBuilder: (_) => [
        PopupMenuItem(
            child: FlatButton(
                onPressed: null,
                child: Text(
                  'New group',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ))),
        PopupMenuItem(
            child: FlatButton(
                onPressed: null,
                child: Text(
                  'New broadcast',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ))),
        PopupMenuItem(
            child: FlatButton(
                onPressed: null,
                child: Text(
                  'Whatsapp Web',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ))),
        PopupMenuItem(
            child: FlatButton(
                onPressed: null,
                child: Text(
                  'Starred message',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ))),
        PopupMenuItem(
            child: FlatButton(
                onPressed: null,
                child: Text(
                  'Payments',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ))),
        PopupMenuItem(
            child: FlatButton(
                onPressed: null,
                child: Text(
                  'Settings',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ))),
      ],
    );
  }
}
