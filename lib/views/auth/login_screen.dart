import 'package:ecommerce_shopping/consts/consts.dart';
import 'package:ecommerce_shopping/consts/social_list.dart';
import 'package:ecommerce_shopping/widgets_common/app_logo.dart';
import 'package:ecommerce_shopping/widgets_common/bg_widget.dart';
import 'package:ecommerce_shopping/widgets_common/customtextField.dart';
import 'package:ecommerce_shopping/widgets_common/login_button.dart';
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
              customColorField(title: password, hint: passwordHint),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: forgetPassword.text.make())),
              5.heightBox,
              loginButton(
                      color: redColor,
                      title: Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      textColor: whiteColor,
                      onPress: () {})
                  .box
                  .width(context.screenWidth - 50)
                  .make(),
              10.heightBox,
              createNewAccount.text.color(fontGrey).make(),
              5.heightBox,
              loginButton(
                      color: lightGolden,
                      title: Text(
                        "Sign up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      textColor: whiteColor,
                      onPress: () {})
                  .box
                  .width(context.screenWidth - 50)
                  .make(),
              10.heightBox,
              loginWith.text.color(fontGrey).make(),
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => CircleAvatar(
                    backgroundColor: lightGrey,
                    radius: 25,
                    child: Image.asset(
                      socialIconList[index],
                      width: 30,
                    ),
                  ),
                ),
              ),
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
