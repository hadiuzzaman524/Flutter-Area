import 'package:flutter/material.dart';
import './body.dart';

void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      home: MyHomePage('Image Slider'),
    );
  }

}

class MyHomePage extends StatelessWidget{

  String title;
  MyHomePage(this.title);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Body(),
    );
  }

}