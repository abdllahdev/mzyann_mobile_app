import 'package:flutter/material.dart';
import 'package:mzyann/widgets/CustomAppBar.dart';
import 'package:mzyann/model/Professional.dart';
import 'package:mzyann/model/Professionals.dart';
import 'package:mzyann/screens/professional_detail/widgets/ProfessionalCard.dart';
import 'package:mzyann/screens/professional_detail/style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:ui' as ui;

class ProfessionalDetailScreen extends StatelessWidget {
  final Professional professional;

  ProfessionalDetailScreen(this.professional);

  Widget _buildContent() {
    return new SingleChildScrollView(
      child: new Column(
        children: <Widget>[
          _buildAvatar(),
          _buildInfo(),
          _buildSummary(),
          _buildPortfolioScroller(),
        ],
      ),
    );
  }

  Widget _buildAvatar() {
    return new Builder(
      builder: (BuildContext context) {
        final statusBarHeight = MediaQuery.of(context).padding.top;
        final margin = statusBarHeight + 30.0;

        return new Container(
          width: 110.0,
          height: 110.0,
          margin: new EdgeInsets.only(top: margin),
          padding: const EdgeInsets.all(3.0),
          alignment: FractionalOffset.center,
          child: new ClipOval(
            child: new Image.asset(professional.avatar, fit: BoxFit.fill,),
          ),
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            border: new Border.all(color: Colors.white30),
          ),
        );
      }
    );
  }

  Widget _buildInfo() {
    return new Container(
      padding: const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Text(
            professional.name,
            style: new TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
          new Text(
            professional.job,
            style: new TextStyle(
              color: Colors.white.withOpacity(0.85),
              fontWeight: FontWeight.w700,
              fontSize: 16.0
            ),
          ),
          new Padding(padding: const EdgeInsets.only(bottom: 3.0)),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Icon(Icons.star, size: 26.0, color: Colors.amber),
              new Icon(Icons.star, size: 26.0, color: Colors.amber),
              new Icon(Icons.star, size: 26.0, color: Colors.amber),
              new Icon(Icons.star_half, size: 26.0, color: Colors.amber),
              new Icon(Icons.star_border, size: 26.0, color: Colors.amber),
            ],
          ),
          new Padding(padding: const EdgeInsets.only(bottom: 3.0)),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Icon(Icons.location_on, color: Colors.white, size: 22.0,),
              new Text(
                professional.location,
                style: new TextStyle(
                  color: Colors.white.withOpacity(0.85),
                  fontWeight: FontWeight.w500,
                ),
              ),
              new Padding(padding: const EdgeInsets.only(left: 40.0)),
              new Icon(Icons.attach_money, color: Colors.white, size: 22.0,),
              new Text(
                professional.salary,
                style: new TextStyle(
                  color: Colors.white.withOpacity(0.85),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          new Padding(padding: const EdgeInsets.only(bottom: 8.0)),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Icon(FontAwesomeIcons.facebook, size: 28.0, color: Colors.white),
              new Icon(FontAwesomeIcons.instagram, size: 28.0, color: Colors.white),
              new Icon(FontAwesomeIcons.twitter, size: 28.0, color: Colors.white),
              new Icon(FontAwesomeIcons.youtube, size: 28.0, color: Colors.white),
            ],
          ),
          new Container(
            color: Colors.white.withOpacity(0.85),
            margin: const EdgeInsets.symmetric(vertical: 15.0),
            width: 225.0,
            height: 1.0,
          ),
        ],
      ),
    );
  }

  Widget _buildSummary() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            'Summary',
            style: new TextStyle(
                color: Colors.white.withOpacity(0.85),
                fontWeight: FontWeight.w900,
                fontSize: 24.0
            ),
          ),
          new Container(
            color: Colors.white.withOpacity(0.85),
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            width: 50.0,
            height: 1.0,
          ),
          new Text(
            professional.about,
            style: new TextStyle(
              color: Colors.white.withOpacity(0.85),
              fontWeight: FontWeight.w500,
              fontSize: 16.0
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPortfolioScroller() {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Container(
          padding: const EdgeInsets.only(left: 10.0, top: 15.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                'Portfolio',
                style: new TextStyle(
                    color: Colors.white.withOpacity(0.85),
                    fontWeight: FontWeight.w900,
                    fontSize: 24.0
                ),
              ),
              new Container(
                color: Colors.white.withOpacity(0.85),
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                width: 50.0,
                height: 1.0,
              ),
            ],
          ),
        ),
        new Container(
          height: 150.0,
          child: new ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: professional.portfolio.length,
            itemExtent: 140.0,
            itemBuilder: (BuildContext context, int index) {
              final image = professional.portfolio[index];
              return new Image(
                image: AssetImage(image),
                height: 256.0,
                width: 256.0,
              );
            },
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(professional.avatar, fit: BoxFit.cover),
          BackdropFilter(
            filter: ui.ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              color: Colors.black.withOpacity(0.5),
              child: _buildContent(),
            ),
          ),
        ],
      ),
    );
  }
}
