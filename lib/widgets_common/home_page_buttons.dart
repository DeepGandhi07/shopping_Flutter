import 'package:flutter/material.dart';

import 'package:ecommerce_shopping/consts/consts.dart';

Widget homeButtons({height, width, icon, title, onPress}) {
  return Container(
    child: Column(
      children: [
        Image.asset(
          icTodaysDeal,
          width: 26,
        ),
        5.heightBox,
        todayDeal.text.fontFamily(semibold).color(darkFontGrey).make()
      ],
    ).box.rounded.white.size(width, height).make(),
  );
}
