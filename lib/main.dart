import "package:flutter/material.dart";
import 'package:kwale_hotel/Pages/HomePage.dart';
import 'package:kwale_hotel/Pages/WelcomePage.dart';
void main(){
  runApp(MaterialApp(
    home: WelcomePage(),
    theme: ThemeData(
      primarySwatch: Colors.cyan
    ),
  ));
}
