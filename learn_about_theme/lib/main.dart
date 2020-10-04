import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      /*
      theme is global handler for style
       */
      theme: ThemeData(

        //আমাদের এয়প এর জন্য ডিফল্ট রঙ ঠিক করে দেয়...
        primarySwatch: Colors.red,

        visualDensity: VisualDensity.adaptivePlatformDensity,

        textTheme: ThemeData.light().textTheme.copyWith(
          /*
          ThemeData.light().textTheme.copyWith()==>
          আমরা যে সকল স্টাইল পরিবরত্তন করব শুধু সেগুলো পরিবর্তন হবে আর
          ডিফল্লট যেগুলো আছে ওগুলো ঠিক রাখবে......।।
           */
          body1: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.pink),

        ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          color: Colors.black,
        ),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title
      ),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.body1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
