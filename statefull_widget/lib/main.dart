import 'package:flutter/material.dart';

void main(){

  runApp(MyApp());

}
/*
প্রতি স্টেটে পরিবর্তন দেখার জন্য StatefulWidget এর প্রয়োজন হয়
 */
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }

}
/*
যেহেতু আমাদের StatefulWidget রিটার্ন করতে হবে এবং StatefulWidget কে
MyApp ক্লাসে ইনহেরিট করা আছে তাই MyApp এর স্টেটকে MyAppState ক্লাসে ইনহেরিট
করা হয়েছে।
 */
class MyAppState extends State<MyApp>{
  int count=0;
  void increment(){
/*
প্রতি টা স্টেটে স্ক্রিনে আপডেট আনার জন্য setState(_) ফাংশন কল করতে হয়।
 */
  setState(() {

    count++;
    print(count);

  });


  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text('My app'),
          centerTitle: true,
        ),

        floatingActionButton: FloatingActionButton(
          child: Text('Ckick here'),
          onPressed: increment,

        ),
        body: Center(child: Text('Click $count times')),

      ),
    );
  }

}