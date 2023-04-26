import 'package:ecommerce_shopping/consts/colors.dart';
import 'package:ecommerce_shopping/consts/consts.dart';
import 'package:ecommerce_shopping/consts/social_list.dart';
import 'package:ecommerce_shopping/widgets_common/home_page_buttons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 60,
              color: lightGrey,
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  fillColor: whiteColor,
                  filled: true,
                  hintText: searchAnything,
                  hintStyle: TextStyle(color: textfieldGrey),
                ),
              ),
            ),
            // Swipers Brands
            VxSwiper.builder(
              aspectRatio: 16 / 9,
              autoPlay: true,
              height: 150,
              enlargeCenterPage: true,
              itemCount: slidersList.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  slidersList[index],
                  fit: BoxFit.fill,
                )
                    .box
                    .rounded
                    .clip(Clip.antiAlias)
                    .margin(EdgeInsets.symmetric(horizontal: 8))
                    .make();
              },
            ),
            10.heightBox,
            //Deals Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                2,
                (index) => homeButtons(
                  height: context.screenHeight * 0.15,
                  width: context.screenWidth / 2.5,
                  icon: index == 0 ? icTodaysDeal : icFlashDeal,
                  title: index == 0 ? todayDeal : flashSale,
                ),
              ),
            ),
            15.heightBox,
            VxSwiper.builder(
              aspectRatio: 16 / 9,
              autoPlay: true,
              height: 150,
              enlargeCenterPage: true,
              itemCount: slidersList.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  slidersList[index],
                  fit: BoxFit.fill,
                )
                    .box
                    .rounded
                    .clip(Clip.antiAlias)
                    .margin(EdgeInsets.symmetric(horizontal: 8))
                    .make();
              },
            ),
            10.heightBox,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                2,
                (index) => homeButtons(
                  height: context.screenHeight * 0.15,
                  width: context.screenWidth / 2.5,
                  icon: index == 0 ? icTodaysDeal : icFlashDeal,
                  title: index == 0 ? todayDeal : flashSale,
                ),
              ),
            ),
            10.heightBox,
          ],
        ),
      ),
    );
  }
}
