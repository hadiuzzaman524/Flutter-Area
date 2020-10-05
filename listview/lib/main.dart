import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      home: MyHomepage('ListView Exercise'),
    );

  }

}

class MyHomepage extends StatelessWidget{
  String title;

  MyHomepage(this.title);

  final myinfo=[
    {'name':'hadiuzzaman','img':'./images/first.jpg'},
    {'name':'hadiuzzaman','img':'./images/second.jpg'},
    {'name':'hadiuzzaman','img':'./images/third.jpg'},
    {'name':'hadiuzzaman','img':'./images/fourth.jpg'},
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(
        title: Text(title),
      ),
      body: ListView(
        /*
      if we use list view then all image are load at a time
      that's why app performance will decrease...
      to reduce this problem we use listview.builder
         */
        children:<Widget>[
          ...myinfo.map((e){

            AssetImage as=AssetImage(e['img']);
            Image image= Image(image: as, width: double.infinity,);

            return image;
          }),
        ],
      ),
    );
  }

}