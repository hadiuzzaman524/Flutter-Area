import 'package:flutter/material.dart';

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
  /*
  কী হল একটা আইডেন্টিফায়ার, ফ্লাটার ইঞ্জিন মূলত এই কী ব্যাবহার করে অনেক উইজেট থেকে কোন উইজেট টা
  পরিবর্তন হচ্ছে অইটা রিকোগ্নাইজ করে, ইচ্ছা করলে সব উইজেটের মদ্যে কী ব্যাবহার করা যায়, তবে স্টেটফুল উইজেটে
  এটা বেশি ব্যাবহার করা হয়, তবে স্টেটলেস উইজেটে এটা না ব্যবহার করলেও কোন প্রভাব পরে না।
  */
  MyHomePage({Key key, this.title}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
