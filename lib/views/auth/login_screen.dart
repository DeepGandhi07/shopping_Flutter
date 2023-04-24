import 'package:ecommerce_shopping/consts/consts.dart';
import 'package:ecommerce_shopping/widgets_common/app_logo.dart';
import 'package:ecommerce_shopping/widgets_common/bg_widget.dart';
import 'package:ecommerce_shopping/widgets_common/customtextField.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: Center(
        child: Column(children: [
          (context.screenHeight * 0.1).heightBox,
          appLogoWidget(),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
          10.heightBox,
          "Login in to $appname".text.fontFamily(bold).white.size(18).make(),
          10.heightBox,
          Column(
            children: [
              customColorField(title: email, hint: emailHint),
              10.heightBox,
              customColorField(title: password, hint: passwordHint),
            ],
          )
              .box
              .white
              .rounded
              .padding(EdgeInsets.all(16))
              .width(context.screenWidth - 70)
              .make(),
        ]),
      ),
    ));
  }
}
