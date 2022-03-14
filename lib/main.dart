
import 'package:flutter/material.dart';

import 'home.dart';
import 'dart:ui';


void main()
{
   runApp(MyApp());
}


class MyApp extends StatelessWidget
{

    @override
    Widget build(BuildContext context)
    {
      return MaterialApp(

          title: 'BMI CALCULATOR',
          debugShowCheckedModeBanner: false,

          theme: ThemeData(
            primarySwatch: Colors.yellow,
            visualDensity: VisualDensity.adaptivePlatformDensity,


          ),

          home: HomeScreen()












      );
    }



}