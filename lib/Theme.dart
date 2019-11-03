import 'package:flutter/material.dart';

class Colors {

  const Colors();


  static const Color appBarTitle = const Color(0xFFFFFFFF);
  static const Color appBarIconColor = const Color(0xFFFFFFFF);
  static const Color appBarBackground = const Color(0xFF43A047);
  static const Color appBarDetailBackground = const Color(0x00FFFFFF);

  //static const Color planetCard = const Color(0xFF434273);
  static const Color professionalCard = const Color(0xFFFFFFFF);
  //static const Color planetListBackground = const Color(0xFF3E3963);
  static const Color professionalPageBackground = const Color(0xFFFFFFFF);
  static const Color professionalTitle = const Color(0xFF43A047);
  static const Color professionalLocation = const Color(0xFF757575);
  static const Color professionalJob = const Color(0xFF757575);
}

class Dimens {
  const Dimens();

  static const professionalThumbnailWidth = 100.0;
  static const professionalThumbnailHeight = 100.0;
}

class TextStyles {

  const TextStyles();

  static const TextStyle appBarTitle = const TextStyle(
      color: Colors.appBarTitle,
      fontFamily: 'Poppins',
      fontSize: 26.0
  );

  static const TextStyle professionalTitle = const TextStyle(
      color: Colors.professionalTitle,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      fontSize: 20.0
  );

  static const TextStyle professionalLocation = const TextStyle(
      color: Colors.professionalLocation,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w300,
      fontSize: 14.0
  );

  static const TextStyle professionalJob = const TextStyle(
      color: Colors.professionalJob,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w300,
      fontSize: 14.0
  );
}