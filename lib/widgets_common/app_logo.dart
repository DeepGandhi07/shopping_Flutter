import 'package:flutter/material.dart';
import 'package:ecommerce_shopping/consts/consts.dart';

Widget appLogoWidget() {
  //using Velocity X here
  return Image.asset(icAppLogo)
      .box
      .white
      .size(77, 77)
      .padding(EdgeInsets.all(8))
      .rounded
      .make();
}
