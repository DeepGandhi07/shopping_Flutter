import 'package:ecommerce_shopping/consts/consts.dart';
import 'package:ecommerce_shopping/consts/strings.dart';
import 'package:flutter/material.dart';

Widget loginButton(
    {required VoidCallback onPress,
    required Color color,
    required Color textColor,
    required Widget title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: color,
      padding: EdgeInsets.all(12),
    ),
    onPressed: onPress,
    child: title,
  );
}
// Widget loginButton({onPress, color, textColor, title}) {
//   return ElevatedButton(
//     style: ElevatedButton.styleFrom(
//       primary: color,
//       padding: EdgeInsets.all(12),
//     ),
//     onPressed: () {
//       onPress;
//     },
//     child: title.text.color(textColor).fontFamily(bold).make(),
//   );
// }
