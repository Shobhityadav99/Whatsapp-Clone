import 'package:flutter/material.dart';
import '../models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemBuilder: (context, index) => new Column(
        children: <Widget>[
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(DummyData[index].avatarUrl),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  DummyData[index].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                new Text(
                  DummyData[index].time,
                  style: TextStyle(color: Colors.grey, fontSize: 14.0),
                )
              ],
            ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                DummyData[index].message,
                style: TextStyle(color: Colors.grey, fontSize: 15.0),
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
            height: 0.0,
            thickness: 1,
            indent: 70,
            endIndent: 10,
          ),
        ],
      ),
      itemCount: DummyData.length,
    );
  }
}
