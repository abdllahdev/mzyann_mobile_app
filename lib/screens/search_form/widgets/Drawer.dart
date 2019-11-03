import 'package:flutter/material.dart';


class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          new Container(
            height: 100.0,
            color: Colors.green,
            child: DrawerHeader(
              padding: const EdgeInsets.all(0.0),
              child: new Center(
                child: new Text(
                  'mzyann',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Monoton',
                    fontSize: 40.0
                  ),
                ),
              )
            ),
          ),
          new ListTile(
            title: new Text('Item 1'),
            onTap: () {
              // Update the state of the app
              // ...
            },
          ),
          new ListTile(
            title: new Text('Item 2'),
            onTap: () {
              // Update the state of the app
              // ...
            },
          ),
        ],
      ),
    );
  }
}
