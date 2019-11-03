import 'package:flutter/material.dart';
import 'package:mzyann/Theme.dart' as Theme;
import 'package:mzyann/model/Professional.dart';


Widget professionalThumbnail(Professional professional) {
  return new Container(
    alignment: new FractionalOffset(0.0, 0.5),
    margin: const EdgeInsets.only(left: 24.0, top: 16.0),
    height: Theme.Dimens.professionalThumbnailHeight,
    width: Theme.Dimens.professionalThumbnailWidth,
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
