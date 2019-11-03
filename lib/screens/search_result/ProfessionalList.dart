import 'package:flutter/material.dart';
import 'package:mzyann/screens/search_result/ProfessionalRow.dart';
import 'package:mzyann/Theme.dart' as Theme;
import 'package:mzyann/model/Professionals.dart';


class ProfessionalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Flexible(
        child: new Container(
          child: new ListView.builder(
            padding: const EdgeInsets.only(top: 0.0),
            itemExtent: 155.0,
            itemCount: Professionals.professionals.length,
            itemBuilder: (context, i) => new ProfessionalRow(Professionals.professionals[i]),
          ),
        ),
    );
  }
}
