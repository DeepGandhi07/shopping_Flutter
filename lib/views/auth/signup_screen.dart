import 'package:ecommerce_shopping/consts/consts.dart';
import 'package:ecommerce_shopping/consts/social_list.dart';
import 'package:ecommerce_shopping/widgets_common/app_logo.dart';
import 'package:ecommerce_shopping/widgets_common/bg_widget.dart';
import 'package:ecommerce_shopping/widgets_common/customtextField.dart';
import 'package:ecommerce_shopping/widgets_common/login_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(children: [
          (context.screenHeight * 0.1).heightBox,
          appLogoWidget(),
          10.heightBox,
          "Join the $appname".text.fontFamily(bold).white.size(18).make(),
          15.heightBox,
          Column(
            children: [
              customColorField(title: name, hint: nameHint),
              customColorField(title: email, hint: emailHint),
              customColorField(title: password, hint: passwordHint),
              customColorField(title: retypePassword, hint: passwordHint),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: forgetPassword.text.make())),
              5.heightBox,
              Row(
                children: [
                  Checkbox(
                    checkColor: redColor,
                    value: false,
                    onChanged: (newValue) {},
                  ),
                  8.widthBox,
                  Expanded(
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "I agree to the ",
                            style: TextStyle(
                              fontFamily: bold,
                              color: fontGrey,
                            )),
                        TextSpan(
                            text: termAndCond,
                            style: TextStyle(
                              fontFamily: bold,
                              color: redColor,
                            )),
                        TextSpan(
                            text: " & ",
                            style: TextStyle(
                              fontFamily: bold,
                              color: fontGrey,
                            )),
                        TextSpan(
                            text: privacyPolicy,
                            style: TextStyle(
                              fontFamily: bold,
                              color: fontGrey,
                            )),
                      ]),
                    ),
                  ),
                ],
              ),
              5.heightBox,
              loginButton(
                      color: redColor,
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
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: alreadyHaveAccount,
                    style: TextStyle(
                      fontFamily: bold,
                      color: fontGrey,
                    ),
                  ),
                  TextSpan(
                    text: login,
                    style: TextStyle(
                      fontFamily: bold,
                      color: redColor,
                    ),
                  ),
                ]),
              ).onTap(() {
                Get.back();
              })
            ],
          )
              .box
              .white
              .rounded
              .padding(EdgeInsets.all(16))
              .width(context.screenWidth - 70)
              .shadowSm
              .make(),
        ]),
      ),
    ));
  }
}
