import 'package:flutter/material.dart';

class PngImage extends StatelessWidget {
  const PngImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 58,
      height: 58,
      child: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(
            "https://www.buseterim.com.tr/upload/default/2019/9/30/kahvehakkndabilmenizgerekenler680.jpg"),
      ),
    ); /*Image.network(
      "https://www.buseterim.com.tr/upload/default/2019/9/30/kahvehakkndabilmenizgerekenler680.jpg",
      fit: BoxFit.cover,
      width: 58,
      height: 58,
    );*/
  }
}
