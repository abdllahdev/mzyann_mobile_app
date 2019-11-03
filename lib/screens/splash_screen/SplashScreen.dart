import 'dart:async';
import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SplashScreenBody(),
    );
  }
}


class SplashScreenBody extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreenBody> {
  @override
  Widget build(BuildContext context) {
    final _screenHeight = MediaQuery.of(context).size.height;
    final _screenWidth = MediaQuery.of(context).size.width;

    return new Scaffold(
      body: new Container(
        width: _screenWidth,
        height: _screenHeight,
        color: Colors.green,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Image(
              image: new AssetImage('assets/logo/mzyann-logo-white-tansperant.png'),
              width: 150.0,
            ),
            new Text(
              'mzyann',
              style: new TextStyle(color: Colors.white, fontSize: 40.0, fontFamily: 'Monoton'),
            ),
            new Text(
              'Easy way to find professionals',
              style: new TextStyle(color: Colors.white, fontSize: 14.0, fontStyle: FontStyle.italic, fontFamily: 'Poppins'),
            )
          ],
        ),
      ),
    );
  }

  void navigationPage() {
    Navigator.pushNamed(context, '/search-form-screen');
  }

  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }
}