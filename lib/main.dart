import 'package:flutter/material.dart';
import 'package:mzyann/screens/splash_screen/SplashScreen.dart';
import 'package:mzyann/screens/search_form/SearchFormScreen.dart';
import 'package:mzyann/screens/search_result/SearchResultScreen.dart';


void main() {
  runApp(MaterialApp(
    title: 'Mzyann',
    initialRoute: '/',
    routes: {
      '/': (context) => SplashScreen(),
      '/search-form-screen': (context) => SearchFormScreen(),
      '/search-result-screen': (context) => SearchResultScreen(),
    },
    theme: ThemeData(
      primaryColor: Colors.green,
    ),
    debugShowCheckedModeBanner: false,
  ));
}
