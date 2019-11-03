import 'package:flutter/material.dart';
import 'package:mzyann/Theme.dart' as Theme;
import 'package:mzyann/model/Professional.dart';


Widget professionalCard(Professional professional) {
  return new Container(
    margin: const EdgeInsets.only(left: 72.0, right: 20.0),
    decoration: new BoxDecoration(
      color: Theme.Colors.professionalCard,
      shape: BoxShape.rectangle,
      borderRadius: new BorderRadius.circular(8.0),
      boxShadow: <BoxShadow>[
        new BoxShadow(color: Colors.black12,
            blurRadius: 15.0,
            offset: new Offset(0.0, 10.0))
      ],
    ),
    child: new Container(
      margin: const EdgeInsets.only(top: 16.0, left: 64.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(professional.name, style: Theme.TextStyles.professionalTitle),
          new Row(
            children: <Widget>[
              new Icon(Icons.star, size: 14.0, color: Colors.amber),
              new Icon(Icons.star, size: 14.0, color: Colors.amber),
              new Icon(Icons.star, size: 14.0, color: Colors.amber),
              new Icon(Icons.star_half, size: 14.0, color: Colors.amber),
              new Icon(Icons.star_border, size: 14.0, color: Colors.amber),
            ],
          ),
          new Container(
              color: const Color(0xFF00C6FF),
              width: 24.0,
              height: 1.0,
              margin: const EdgeInsets.symmetric(vertical: 6.0)
          ),
          new Column(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  new Icon(Icons.location_on, size: 14.0, color: Theme.Colors.professionalJob),
                  new Text(professional.location, style: Theme.TextStyles.professionalLocation),
                ],
              ),
              new Row(
                children: <Widget>[
                  new Icon(Icons.assignment, size: 14.0, color: Theme.Colors.professionalJob),
                  new Text(professional.job, style: Theme.TextStyles.professionalJob),
                ],
              ),
              new Row(
                children: <Widget>[
                  new Icon(Icons.attach_money, size: 14.0, color: Theme.Colors.professionalJob),
                  new Text(professional.salary, style: Theme.TextStyles.professionalJob),
                ],
              ),
            ],
          )
        ],
      ),
    ),
  );
}
