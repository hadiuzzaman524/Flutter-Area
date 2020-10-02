/*
1.first need helper library ,
2.define main() function,
3.build a widget,
4.and finally draw widget..
 */
import 'package:flutter/material.dart';

void main(){

//build widget
 var app= MaterialApp(// core widget in flutter and provide core functionality
//named parameter
  home: Text('Hello world'), // home is default screen in every flutter application
  );

 //run app in machine..
  runApp(app);
}