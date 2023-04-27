import 'package:ecommerce_shopping/consts/colors.dart';
import 'package:ecommerce_shopping/consts/consts.dart';
import 'package:ecommerce_shopping/widgets_common/login_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemDetails extends StatelessWidget {
  final String title;
  const ItemDetails({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
          title: title.text.color(darkFontGrey).fontFamily(bold).make(),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_outline,
              ),
            ),
          ]),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //swiper Selection
                    VxSwiper.builder(
                      autoPlay: true,
                      height: 350,
                      aspectRatio: 16 / 9,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          imgFc5,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                    10.heightBox,
                    //Title and Description
                    title.text
                        .size(16)
                        .color(darkFontGrey)
                        .fontFamily(semibold)
                        .make(),
                    10.heightBox,
                    //Rating
                    VxRating(
                      onRatingUpdate: (value) {},
                      normalColor: textfieldGrey,
                      selectionColor: golden,
                      size: 25,
                      stepInt: true,
                    ),
                    10.heightBox,
                    "\$300"
                        .text
                        .color(redColor)
                        .fontFamily(bold)
                        .size(18)
                        .make(),

                    10.heightBox,
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: loginButton(
              onPress: () {},
              color: redColor,
              textColor: whiteColor,
              title: Text("Add to Cart"),
            ),
          )
        ],
      ),
    );
  }
}
