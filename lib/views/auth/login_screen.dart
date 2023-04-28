import 'package:ecommerce_shopping/consts/consts.dart';
import 'package:ecommerce_shopping/consts/social_list.dart';
import 'package:ecommerce_shopping/controller/auth_controller.dart';
import 'package:ecommerce_shopping/views/Home_Screen/home.dart';
import 'package:ecommerce_shopping/views/auth/signup_screen.dart';
import 'package:ecommerce_shopping/widgets_common/app_logo.dart';
import 'package:ecommerce_shopping/widgets_common/bg_widget.dart';
import 'package:ecommerce_shopping/widgets_common/customtextField.dart';
import 'package:ecommerce_shopping/widgets_common/login_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AuthController());
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(children: [
          (context.screenHeight * 0.1).heightBox,
          appLogoWidget(),
          10.heightBox,
          "Login in to $appname".text.fontFamily(bold).white.size(18).make(),
          15.heightBox,
          Obx(
            () => Column(
              children: [
                customColorField(
                    title: email,
                    hint: emailHint,
                    isPass: false,
                    controller: controller.emailController),
                customColorField(
                    title: password,
                    hint: passwordHint,
                    isPass: true,
                    controller: controller.passwordController),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetPassword.text.make())),
                5.heightBox,
                controller.isLoading.value
                    ? CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(redColor),
                      )
                    : loginButton(
                        color: redColor,
                        title: Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        textColor: whiteColor,
                        onPress: () async {
                          controller.isLoading(true);
                          await controller.loginMethod(context: context).then(
                            (value) {
                              if (value != null) {
                                VxToast.show(context, msg: loggedIn);
                                Get.offAll(
                                  () => Home(),
                                );
                              } else {
                                controller.isLoading(false);
                              }
                            },
                          );
                        },
                      ).box.width(context.screenWidth - 50).make(),
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
                    onPress: () {
                      Get.to(() => SignUp());
                    }).box.width(context.screenWidth - 50).make(),
                10.heightBox,
                loginWith.text.color(fontGrey).make(),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: lightGrey,
                        radius: 25,
                        child: Image.asset(
                          socialIconList[index],
                          width: 30,
                        ),
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
                .shadowSm
                .make(),
          ),
        ]),
      ),
    ));
  }
}
