import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateless Widget'),
          centerTitle: true,

        ),
        body: Center(child: Text('My name is hadi',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),

        )),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.place),
          onPressed: null,
        ),
      ),
    );
  }


}