import 'package:flutter/material.dart';
import 'package:mzyann/Theme.dart' as Theme;
import 'package:mzyann/model/Professional.dart';


Widget professionalThumbnail(Professional professional) {
  return new Container(
    margin: const EdgeInsets.symmetric(vertical: 40.0),
    height: Theme.Dimens.professionalThumbnailHeight,
    width: Theme.Dimens.professionalThumbnailWidth,
    alignment: FractionalOffset.center,
    child: new Hero(
      tag: 'professional-image-${professional.id}',
      child: new Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: new AssetImage(professional.avatar))
        ),
      )
    ),
  );
}
