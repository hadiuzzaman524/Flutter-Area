import 'package:flutter/material.dart';

void main(){

  var app=MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title: Text('Myapplication'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        /*child: Text('Click'),
        onPressed: null,*/
        child: Icon(Icons.call),
        onPressed: ()=> print('hello world'),

      ),
      body: Text('Bangladesh is my motherland'),


    ),

  );

  runApp(app);
}