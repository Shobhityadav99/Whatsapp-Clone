import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_model.dart';

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
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: <Widget>[
          Column(
            children: <Widget>[
              FlatButton(
                child: AddingNewChatandGroup(
                  icon: Icons.group,
                  label: 'New Group',
                ),
                onPressed: null,
              ),
              FlatButton(
                child: AddingNewChatandGroup(
                  icon: Icons.person,
                  label: 'New Contact',
                ),
                onPressed: null,
              ),
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) => new Column(
              children: <Widget>[
                new ListTile(
                  leading: new CircleAvatar(
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundColor: Colors.grey,
                    backgroundImage:
                        new NetworkImage(DummyData[index].avatarUrl),
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
              ],
            ),
            itemCount: DummyData.length,
          ),
        ],
      ),
    );
  }
}

class AddingNewChatandGroup extends StatelessWidget {
  final String label;
  final IconData icon;
  const AddingNewChatandGroup({
    this.icon,
    this.label,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Divider(
          height: 60,
        ),
        CircleAvatar(
          backgroundColor: Theme.of(context).accentColor,
          child: Icon(
            icon,
            color: Colors.white,
          ),
          radius: 23,
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          this.label,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ],
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
