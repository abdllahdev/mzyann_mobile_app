import 'package:flutter/material.dart';
import 'package:mzyann/screens/search_form/widgets/SearchFormCard.dart';
import 'package:mzyann/screens/search_form/widgets/Drawer.dart';
import 'package:mzyann/widgets/CustomAppBar.dart';
import 'package:mzyann/screens/search_form/widgets/CustomDropDownButton.dart';
import 'package:mzyann/screens/search_form/widgets/CustomTextField.dart';
import 'package:mzyann/screens/search_form/style.dart';


class SearchFormScreen extends StatelessWidget {
  final mainKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new SearchFormScreenBody(),
          new Builder(
            builder: (BuildContext context) {
              return CustomAppBar(
                actionButton: new IconButton(
                    icon: Icon(Icons.menu, color: Colors.white,),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    }
                ),
              );
            }
          )
        ],
      ),
      drawer: new AppDrawer(),
    );
  }
}


class SearchFormScreenBody extends StatefulWidget {
  @override
  _SearchFormScreenState createState() => new _SearchFormScreenState();
}


class _SearchFormScreenState extends State<SearchFormScreenBody> {
  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;
    final _screenHeight = MediaQuery.of(context).size.height;

    return new SingleChildScrollView(
      child: new Container(
        height: _screenHeight,
        width: _screenWidth,
        color: Colors.green,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Padding(padding: const EdgeInsets.only(top: 70.0),),
            new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Image(
                  image: new AssetImage('assets/logo/mzyann-logo-white-tansperant.png'),
                  fit: BoxFit.fill,
                  width: 150.0,
                ),
              ],
            ),
            new Text(
              'mzyann',
              style: new TextStyle(color: Colors.white, fontSize: 40.0, fontFamily: 'Monoton'),
            ),
            new Text(
              'Easy way to find professionals' ,
              style: new TextStyle(color: Colors.white, fontSize: 14.0, fontStyle: FontStyle.italic, fontFamily: 'Poppins'),
            ),
            new Padding(padding: const EdgeInsets.only(bottom: 20.0),),
            new SearchFormCard()
          ],
        ),
      )
    );
  }
}

