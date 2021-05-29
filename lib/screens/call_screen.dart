import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_model.dart';

class CallScreen extends StatelessWidget {
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
                Container(
                  alignment: Alignment.bottomLeft,
                  height: 10,
                  child: new Icon(
                    Icons.call,
                    color: Theme.of(context).primaryColor,
                    size: 25,
                  ),
                ),
              ],
            ),
            subtitle: new Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Yestarday, 16:94",
                style: TextStyle(color: Colors.black54, fontSize: 15.0),
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
