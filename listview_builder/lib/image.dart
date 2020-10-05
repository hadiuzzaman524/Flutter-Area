import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Imagex extends StatelessWidget {
 String name;
 String url;

 Imagex(this.name,this.url);

  @override
  Widget build(BuildContext context) {

    AssetImage assetImage=AssetImage(url);
    Image image=Image(
      image: assetImage,
      width: double.infinity,
    );

    return Container(
      margin: EdgeInsets.all(10),
      decoration:BoxDecoration(
        border: Border.all(width: 5,color: Colors.green),
      ),
      child: Column(

        children: [
         Text(name,
           style: TextStyle(
             color: Colors.black,

           ),
         ),
          Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            child: image,
          ),
        ],
      ),
    );
  }
}
