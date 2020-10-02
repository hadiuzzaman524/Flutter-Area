import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  int count=0;
  void increment(){
    count++;
    print(count);
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('mantasha',
          style: TextStyle(
            color: Colors.black,
            backgroundColor: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          ),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: increment,
        ),
        body: Center(
          child: Text('You click $count times',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
          ),
          ),
        )
      ),
    );
  }

}