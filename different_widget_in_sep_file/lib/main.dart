
import 'package:different_widget_in_sep_file/GetText.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  int count=0;
  void counter(){
    print(count);
    count++;
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("eTutor"),
          centerTitle: true,

        ),
        body:GetText(count),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: counter,
        ),
      ),

    );
  }

}