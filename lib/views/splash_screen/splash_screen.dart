import 'package:ecommerce_shopping/consts/colors.dart';
import 'package:ecommerce_shopping/consts/consts.dart';
import 'package:ecommerce_shopping/views/Home_Screen/home.dart';
import 'package:ecommerce_shopping/views/Home_Screen/home_Screen.dart';
import 'package:ecommerce_shopping/views/auth/login_screen.dart';
import 'package:ecommerce_shopping/widgets_common/app_logo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // creating a method for change a screen

  changeScreen() {
    Future.delayed(Duration(seconds: 3), () {
      // using GetX
      // Get.to(() => LoginScreen());

      auth.authStateChanges().listen((User? user) {
        if (user == null && mounted) {
          Get.to(
            () => LoginScreen(),
          );
        } else {
          Get.to(
            () => Home(),
          );
        }
      });
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: Center(
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Image.asset(icSplashBg, width: 300)),
            20.heightBox,
            appLogoWidget(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            5.heightBox,
            appversion.text.white.make(),
            Spacer(),
            credits.text.white.fontFamily(semibold).make(),
            30.heightBox,

            //our splash screen completed
          ],
        ),
      ),
    );
  }
}
