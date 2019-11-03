import 'package:flutter/material.dart';
import 'package:mzyann/screens/search_form/widgets/CustomDropDownButton.dart';
import 'package:mzyann/screens/search_form/widgets/CustomTextField.dart';
import 'package:mzyann/screens/search_form/style.dart';


class SearchFormCard extends StatefulWidget {
  @override
  _SearchFormCardState createState() => new _SearchFormCardState();
}


class _SearchFormCardState extends State<SearchFormCard> {
  String _jobSelectedValue;
  String _taskSelectedValue;
  String _locationSelectedValue;

  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;

    final _jobs = <DropdownMenuItem>[
      CustomDropdownButton.buildDropdownMenuItem(
          'photographer',
          'Photographer',
          _screenWidth - 123
      )
    ];

    final _tasks = <DropdownMenuItem>[
      CustomDropdownButton.buildDropdownMenuItem(
          'photo-session',
          'Photo Session',
          _screenWidth - 123
      )
    ];

    final _locations = <DropdownMenuItem>[
      CustomDropdownButton.buildDropdownMenuItem(
          'zagazig',
          'Zagazig',
          _screenWidth - 123
      )
    ];

    return new Card(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
      shape: new RoundedRectangleBorder(
          side: new BorderSide(style: BorderStyle.none),
          borderRadius: new BorderRadius.circular(10.0)
      ),
      color: Colors.white,
      child: new Container(
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new CustomDropdownButton(
              items: _jobs,
              value: _jobSelectedValue,
              hintText: 'What do you need?',
              hintStyle: searchFormTextStyle,
              textStyle: searchFormTextStyle,
              icon: new Icon(
                Icons.help_outline,
                color: Colors.green,
              ),
              onChange: (item) {
                setState(() {
                  _jobSelectedValue = item;
                });
              },
            ),
            new CustomDropdownButton(
              items: _tasks,
              value: _taskSelectedValue,
              hintText: 'For?',
              hintStyle: searchFormTextStyle,
              textStyle: searchFormTextStyle,
              icon: new Icon(
                Icons.assignment_late,
                color: Colors.green,
              ),
              onChange: (item) {
                setState(() {
                  _taskSelectedValue = item;
                });
              },
            ),
            new CustomDropdownButton(
              items: _locations,
              value: _locationSelectedValue,
              hintText: 'Location',
              hintStyle: searchFormTextStyle,
              textStyle: searchFormTextStyle,
              icon: new Icon(
                Icons.location_on,
                color: Colors.green,
              ),
              onChange: (item) {
                setState(() {
                  _locationSelectedValue = item;
                });
              },
            ),
            new CustomTextField(
                labelText: 'Search by name (optional)',
                labelStyle: searchFormTextStyle,
                icon: new Icon(
                  Icons.person,
                  color: Colors.green,
                ),
                textStyle: searchFormTextStyle
            ),
            new Padding(padding: const EdgeInsets.only(bottom: 20.0)),
            new Container(
              height: 60.0,
              width: _screenWidth - 60,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  gradient: new LinearGradient(
                      colors: <Color>[
                        Colors.pinkAccent,
                        Colors.redAccent
                      ]
                  )
              ),
              child: new FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/search-result-screen');
                },
                child: new Text(
                  'SEARCH',
                  style: new TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
