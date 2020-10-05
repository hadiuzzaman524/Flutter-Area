import 'package:flutter/material.dart';
import 'package:listview_builder/image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {

  String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  final mylist=[
    {'name':'hadiuzzaman','img':'./images/first.jpg'},
    {'name':'hadiuzzaman','img':'./images/second.jpg'},
    {'name':'hadiuzzaman','img':'./images/third.jpg'},
    {'name':'hadiuzzaman','img':'./images/fourth.jpg'},
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(title),
      ),
      body:ListView.builder(
          itemCount: mylist.length,
          itemBuilder: (BuildContext context,int index){
            return Imagex(mylist[index]['name'],mylist[index]['img']);

          // ignore: missing_return
          }

      )
    );
  }
}
