import 'package:flutter/material.dart';

void main(){

  var app=MaterialApp(
    home: Scaffold(
      appBar:AppBar(
        title: Text('myapplication'),
        centerTitle: true,
        backgroundColor:Colors.lightBlue ,

      ),
    ),
  );

  runApp(app);
}