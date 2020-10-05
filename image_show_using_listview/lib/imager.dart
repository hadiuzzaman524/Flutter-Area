import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageR extends StatelessWidget {

  String name;
  String url;
  ImageR(this.name,this.url);

  @override
  Widget build(BuildContext context) {

    AssetImage assetImage=AssetImage(url,);
    Image image=Image(image: assetImage, width: double.infinity,);



    return Container(
      padding: EdgeInsets.all(10),

      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all()
        ),
        child: Column(
          children: [
            Text(name,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,

            ),
            ),
            Container(child: image),

          ],

        ),
      ),
    );
  }
}
