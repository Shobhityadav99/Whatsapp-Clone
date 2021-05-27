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
        Container(
          color: Colors.black12,
          padding: EdgeInsets.all(10),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("Recent Updates",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black54)),
            ],
          ),
        ),
        // new ListView.builder(
        //   itemBuilder: (context, index) => new Column(
        //     children: <Widget>[
        //       new Divider(
        //         height: 10.0,
        //       ),
        //       new ListTile(
        //         leading: new CircleAvatar(
        //           foregroundColor: Theme.of(context).primaryColor,
        //           backgroundColor: Colors.grey,
        //           backgroundImage: new NetworkImage(DummyData[index].avatarUrl),
        //         ),
        //         title: new Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: <Widget>[
        //             new Text(
        //               DummyData[index].name,
        //               style: TextStyle(fontWeight: FontWeight.bold),
        //             ),
        //             new Text(
        //               DummyData[index].time,
        //               style: TextStyle(color: Colors.grey, fontSize: 14.0),
        //             )
        //           ],
        //         ),
        //         subtitle: new Container(
        //           padding: const EdgeInsets.only(top: 5.0),
        //           child: Text(
        //             DummyData[index].message,
        //             style: TextStyle(color: Colors.grey, fontSize: 15.0),
        //           ),
        //         ),
        //       )
        //     ],
        //   ),
        //   itemCount: DummyData.length,
        // ),
      ],
    );
  }
}
