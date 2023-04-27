import 'package:ecommerce_shopping/consts/consts.dart';
import 'package:ecommerce_shopping/views/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // we are using getX so we have to change this app in to getMaterial app
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,

          // to set AppBar Icons color
          iconTheme: IconThemeData(
            color: darkFontGrey,
          ),
        ),
        fontFamily: regular,
      ),
      home: SplashScreen(),
    );
  }
}
