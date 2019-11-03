import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {

  final Text title;
  final Color color;
  final IconButton actionButton;
  final double barHeight = 66.0;

  CustomAppBar({
    this.title = const Text(''),
    this.actionButton,
    this.color
  });

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return new Container(
      padding: new EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeight,
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          actionButton,
          title
        ],
      ),
      color: color,
    );
  }
}
