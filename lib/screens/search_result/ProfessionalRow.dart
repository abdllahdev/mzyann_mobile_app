import 'package:flutter/material.dart';
import 'package:mzyann/screens/search_result/widgets/ProfessionalCard.dart';
import 'package:mzyann/screens/search_result/widgets/ProfessionalThumbnail.dart';
import 'package:mzyann/model/Professional.dart';
import 'package:mzyann/screens/professional_detail/ProfessionalDetailScreen.dart';


class ProfessionalRow extends StatelessWidget {

  final Professional professional;

  ProfessionalRow(this.professional);


  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 120.0,
      margin: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: new FlatButton(
        onPressed: () {
          Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) => ProfessionalDetailScreen(this.professional)
            )
          );
        },
        child: new Stack(
          children: <Widget>[
            professionalCard(professional),
            professionalThumbnail(professional),
          ],
        ),
      ),
    );
  }
}
