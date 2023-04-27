import 'package:ecommerce_shopping/consts/colors.dart';
import 'package:ecommerce_shopping/consts/consts.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final String title;
  const ItemDetails({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
          title: title.text.color(darkFontGrey).fontFamily(bold).make(),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: darkFontGrey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_outline,
                color: darkFontGrey,
              ),
            ),
          ]),
      body: Container(),
    );
  }
}
