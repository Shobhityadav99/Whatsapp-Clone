import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_model.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new FlatButton(
            padding: EdgeInsets.all(0),
            onPressed: null,
            child: new ListTile(
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: new NetworkImage(DummyData[0].avatarUrl),
                radius: 30,
                child: Container(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    backgroundColor: Theme.of(context).accentColor,
                    radius: 12,
                    child: Icon(
                      Icons.add,
                      size: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    "My status",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              subtitle: new Text(
                "Tap to add status update",
                style: TextStyle(fontSize: 15),
              ),
            )),
        new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text("Recent Updates"),
          ],
        )
      ],
    );
  }
}
