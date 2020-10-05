
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
AssetImage assetImage=AssetImage('images/first.jpg');
Image image=Image(image: assetImage,);

AssetImage assetImage2=AssetImage('images/second.jpg');
Image image2=Image(image: assetImage2,);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      /*
      বডির মধ্যে অনেক গুল উইজেট দেখানোর জন্য কলাম উইজেট ব্যাবহার করা হয়,
      সেটা দেখাবে নিচে নিচে।।
      আবার রো ব্যাবহার করা হয় পাশে পাশে দেখানোর জন্য...
       */
      body:Column(
        children: [image,image2],
      )
    );
  }
}
