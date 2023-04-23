import 'package:flutter/material.dart';
import 'package:ecommerce_shopping/consts/consts.dart';

Widget customColorField() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      email.text.color(redColor).fontFamily(semibold).size(16).make(),
      5.heightBox,
      TextFormField(
        decoration: InputDecoration(
            hintText: emailHint,
            hintStyle: TextStyle(fontFamily: semibold, color: textfieldGrey),
            isDense: true,
            fillColor: lightGrey,
            filled: true,
            border: InputBorder.none,
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: redColor))),
      )
    ],
  );
}
