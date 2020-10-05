import 'package:flutter/material.dart';

import './imager.dart';

class Body extends StatelessWidget {

  final mylist=[
    {'name':'hadiuzzaman','img':'./images/first.jpg'},
    {'name':'hadiuzzaman','img':'./images/second.jpg'},
    {'name':'hadiuzzaman','img':'./images/third.jpg'},
    {'name':'hadiuzzaman','img':'./images/fourth.jpg'},
    {'name':'hadiuzzaman','img':'./images/fifth.jpg'},
  ];

  @override
  Widget build(BuildContext context) {

   /* return ListView(
      children: [
        ...mylist.map((e) {

          AssetImage ast=AssetImage(e['img']);
          Image img=Image(image: ast,width: double.infinity,);

          return img;
        }),
      ],
    );*/

   return ListView.builder(
       itemCount: mylist.length,
       itemBuilder: (BuildContext context,int index){

         return ImageR(mylist[index]['name'],mylist[index]['img']);

       }
   );
  }
}
