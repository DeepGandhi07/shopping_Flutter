import 'package:ecommerce_shopping/consts/consts.dart';
import 'package:ecommerce_shopping/consts/social_list.dart';
import 'package:ecommerce_shopping/controller/auth_controller.dart';
import 'package:ecommerce_shopping/widgets_common/app_logo.dart';
import 'package:ecommerce_shopping/widgets_common/bg_widget.dart';
import 'package:ecommerce_shopping/widgets_common/customtextField.dart';
import 'package:ecommerce_shopping/widgets_common/login_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool? isCheak = false;

  var controller = Get.put(AuthController());

  //text controllers
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var emailController = TextEditingController();
  var passwordRetypeController = TextEditingController();
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
              customColorField(
                  title: name, hint: nameHint, controller: nameController),
              customColorField(
                  title: email, hint: emailHint, controller: emailController),
              customColorField(
                  title: password,
                  hint: passwordHint,
                  controller: passwordController),
              customColorField(
                  title: retypePassword,
                  hint: passwordHint,
                  controller: passwordRetypeController),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: forgetPassword.text.make())),
              5.heightBox,
              Row(
                children: [
                  Checkbox(
                    activeColor: redColor,
                    checkColor: whiteColor,
                    value: isCheak,
                    onChanged: (newValue) {
                      setState(() {
                        isCheak = newValue;
                      });
                    },
                  ),
                  8.widthBox,
                  Expanded(
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "I agree to the ",
                            style: TextStyle(
                              fontFamily: regular,
                              color: fontGrey,
                            )),
                        TextSpan(
                            text: termAndCond,
                            style: TextStyle(
                              fontFamily: regular,
                              color: redColor,
                            )),
                        TextSpan(
                            text: " & ",
                            style: TextStyle(
                              fontFamily: regular,
                              color: fontGrey,
                            )),
                        TextSpan(
                            text: privacyPolicy,
                            style: TextStyle(
                              fontFamily: regular,
                              color: fontGrey,
                            )),
                      ]),
                    ),
                  ),
                ],
              ),
              5.heightBox,
              loginButton(
                      color: isCheak == true ? redColor : lightGrey,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  alreadyHaveAccount.text.color(fontGrey).make(),
                  login.text.color(redColor).make().onTap(() {
                    Get.back();
                  })
                ],
              ),
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
