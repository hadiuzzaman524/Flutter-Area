
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(

      debugShowCheckedModeBanner: false,
      // remove the debug banner from header. By default it is true
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.red,

        visualDensity: VisualDensity.adaptivePlatformDensity,

        appBarTheme:AppBarTheme(
          centerTitle: true,
          textTheme: ThemeData.light().textTheme.copyWith(
            title: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),

          ),
        ),
      ),
      home: MyHomePage(title: 'Image'),
    );
  }
}

class MyHomePage extends StatelessWidget {

  String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Text('hello'),
    );
  }
}
