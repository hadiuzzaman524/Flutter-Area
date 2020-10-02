import 'package:flutter/material.dart';

class GetText extends StatelessWidget{

  int count;
  GetText(this.count);
  @override
  Widget build(BuildContext context) {

   return Center(
     child: Text('You press button $count time',
     style: TextStyle(
       fontSize: 25,
       color: Colors.red,
       backgroundColor: Colors.black,
     ),),
   );
  }
}