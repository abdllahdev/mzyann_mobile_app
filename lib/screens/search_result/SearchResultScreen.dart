import 'package:flutter/material.dart';
import 'package:mzyann/widgets/CustomAppBar.dart';
import 'package:mzyann/screens/search_result/ProfessionalList.dart';


class SearchResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new SearchResultScreenBody()
        ],
      )
    );
  }
}


class SearchResultScreenBody extends StatefulWidget {
  @override
  _SearchResultScreenState createState() => new _SearchResultScreenState();
}


class _SearchResultScreenState extends State<SearchResultScreenBody> {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new CustomAppBar(
          actionButton: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.white,),
            onPressed: () {
              Navigator.pop(context);
            }
          ),
          color: Colors.green,
          title: new Text(
            'Search Result',
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 24.0
            ),
          )
        ),
        new ProfessionalList(),
      ],
    );
  }
}
