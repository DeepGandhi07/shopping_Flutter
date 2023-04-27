import 'package:ecommerce_shopping/consts/consts.dart';
import 'package:flutter/material.dart';

Widget detailsCard({width, String? count, String? title}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      count!.text.fontFamily(bold).color(darkFontGrey).size(16).make(),
      5.heightBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  )
      .box
      .white
      .roundedSM
      .width(width)
      .height(80)
      .padding(EdgeInsets.all(4))
      .make();
}
