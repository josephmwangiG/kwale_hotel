import "package:flutter/material.dart";
import 'package:kwale_hotel/Pages/HomePage.dart';

void main(){
  runApp(MaterialApp(
    home: HomePage(),

    theme: ThemeData(
      primarySwatch: Colors.cyan
    ),
  ));
}