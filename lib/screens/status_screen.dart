import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_model.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      shrinkWrap: true,
      children: <Widget>[
      new FlatButton(
          padding: EdgeInsets.all(0),
          onPressed: null,
          child: new ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(DummyData[0].avatarUrl),
              radius: 25,
              child: Container(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                  backgroundColor: Theme.of(context).accentColor,
                  radius: 10,
                  child: Icon(
                    Icons.add,
                    size: 18,
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
      UpdatesBar(
        label: "Recent updates",
      ),
      new ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) => new ListView(
          shrinkWrap: true,
          children: <Widget>[
            new ListTile(
              leading: new CircleAvatar(
                radius: 30,
                backgroundColor: Theme.of(context).accentColor,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(DummyData[index].avatarUrl),
                  radius: 26,
                ),
              ),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    DummyData[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              subtitle: new Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  "69 minutes ago",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 0.0,
              thickness: 1,
              indent: 85,
              endIndent: 10,
            ),
          ],
        ),
        itemCount: DummyData.length - 2,
      ),
      UpdatesBar(
        label: "Viewed updates",
      ),    ]);
  }
}

class UpdatesBar extends StatelessWidget {
  final String label;
  const UpdatesBar({
    Key key,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      padding: EdgeInsets.all(10),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(this.label,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black54)),
        ],
      ),
    );
  }
}
