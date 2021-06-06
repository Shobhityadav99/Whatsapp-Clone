import 'package:flutter/material.dart';

class NewChat extends StatefulWidget {
  @override
  _NewChatState createState() => _NewChatState();
}

class _NewChatState extends State<NewChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
                text: "Select contact",
                style: TextStyle(fontSize: 24),
                children: <TextSpan>[
                  TextSpan(
                    text: '\n420 contacts',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ]),
          ),
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: null),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: null,
            ),
            VertMenu(),
          ],
        ),
        body: Column(
          children: <Widget>[
            FlatButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Divider(
                    height: 60,
                  ),
                  CircleAvatar(
                    backgroundColor: Theme.of(context).accentColor,
                    radius: 23,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'New Group',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              onPressed: null,
            )
          ],
        ));
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
