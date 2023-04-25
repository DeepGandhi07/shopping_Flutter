import 'package:flutter/material.dart';

import 'package:ecommerce_shopping/consts/consts.dart';

Widget homeButtons() {
  return Container(
    child: Column(
      children: [
        Image.asset(
          icTodaysDeal,
          width: 26,
        ),
        5.heightBox,
        deal.text.fontFamily(semibold).color(darkFontGrey).make()
      ],
    ).box.rounded.white.make(),
  );
}
