import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mzyann/model/Professional.dart';
import 'package:mzyann/screens/professional_detail/widgets/ProfessionalThumbnail.dart';
import 'package:mzyann/screens/professional_detail/style.dart';


class ProfessionalCard extends StatelessWidget {
  final Professional professional;

  ProfessionalCard(this.professional);

  @override
  Widget build(BuildContext context) {
    Container professionaCardContent() {
      return new Container(
        padding: const EdgeInsets.only(top: 60.0),
        constraints: new BoxConstraints.expand(),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Text(professional.name, style: proNameStyle,),
            new Padding(padding: const EdgeInsets.only(top: 0.0)),
            new Text(professional.job, style: TextStyle(color: Colors.black, fontSize: 16.0),),
            new Container(
                color: const Color(0xFF00C6FF),
                width: 50.0,
                height: 2.0,
                margin: const EdgeInsets.symmetric(vertical: 6.0)
            ),
            new Padding(padding: const EdgeInsets.only(bottom: 5.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Icon(Icons.star, size: 32.0, color: Colors.amber),
                new Icon(Icons.star, size: 32.0, color: Colors.amber),
                new Icon(Icons.star, size: 32.0, color: Colors.amber),
                new Icon(Icons.star, size: 32.0, color: Colors.amber),
                new Icon(Icons.star_border, size: 32.0, color: Colors.amber),
              ],
            ),
            new Padding(padding: const EdgeInsets.only(bottom: 10.0)),
            new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Icon(Icons.location_on, color: Colors.black,),
                new Text(professional.location, style: TextStyle(color: Colors.black, fontSize: 16.0),),
                new Padding(padding: const EdgeInsets.only(right: 25.0)),
                new Icon(Icons.attach_money, color: Colors.black,),
                new Text(professional.salary, style: TextStyle(color: Colors.black, fontSize: 16.0),)
              ],
            ),
            new Padding(padding: const EdgeInsets.only(bottom: 15.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Icon(FontAwesomeIcons.facebook, size: 28.0, color: const Color(0xFF3b5998)),
                new Icon(FontAwesomeIcons.instagram, size: 28.0, color: const Color(0xFF795548)),
                new Icon(FontAwesomeIcons.twitter, size: 28.0, color: const Color(0xFF55acee)),
                new Icon(FontAwesomeIcons.youtube, size: 28.0, color: const Color(0xFFb31217)),
              ],
            )
          ],
        ),
      );
    }

    Container professionalCard() {
      return new Container(
        child: professionaCardContent(),
        height: 250.0,
        margin: const EdgeInsets.only(top: 90.0),
        decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: new BorderRadius.circular(10.0),
          boxShadow: <BoxShadow>[
            new BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
              offset: new Offset(0.0, 10.0)
            )
          ]
        ),
      );
    }

    return new Container(
      margin: const EdgeInsets.fromLTRB(15.0, 30.0, 15.0, 20.0),
      child: new Stack(
        alignment: FractionalOffset.topCenter,
        children: <Widget>[
          professionalCard(),
          professionalThumbnail(this.professional),
        ],
      ),
    );
  }
}
