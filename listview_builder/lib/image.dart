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
      child: image,
    );
  }
}
