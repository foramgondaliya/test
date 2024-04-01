
import 'package:exam/screens/cartPage.dart';
import 'package:exam/screens/detailPage.dart';
import 'package:exam/screens/homePage.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>homePage(),
        'details' : (context) => detail(),
        'cart' : (context) => cartPage(),
      },
    ),
  );
}
