import 'package:flutter/material.dart';

void main(){
  runApp(Application());
}

class Application extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('My application'),
          backgroundColor: Colors.black26,
          centerTitle: true,
        ),

        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.ac_unit),
          onPressed: ()=> print('Hello world'),

        ),

        body: Text("Bangladesh is my motherland"),
      ),
    );
  }
}