import 'package:ecommerce_shopping/consts/consts.dart';
import 'package:ecommerce_shopping/widgets_common/bg_widget.dart';
import 'package:flutter/material.dart';

class CategoryDetails extends StatelessWidget {
  final String title;
  CategoryDetails({required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: title!.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    6,
                    (index) => "Baby Clothing"
                        .text
                        .fontFamily(semibold)
                        .size(12)
                        .color(darkFontGrey)
                        .makeCentered()
                        .box
                        .white
                        .roundedSM
                        .size(120, 60)
                        .margin(
                          EdgeInsets.symmetric(horizontal: 4),
                        )
                        .make(),
                  ),
                ),
              ),
              20.heightBox,
              //Items Container

              Expanded(
                child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 250,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          imgP5,
                          height: 150,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        "Laptop 4GB/512GB"
                            .text
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .make(),
                        10.heightBox,
                        "\$600"
                            .text
                            .color(redColor)
                            .fontFamily(bold)
                            .size(16)
                            .make(),
                      ],
                    )
                        .box
                        .white
                        .roundedSM
                        .outerShadowXl
                        .margin(
                          EdgeInsets.symmetric(horizontal: 4),
                        )
                        .padding(
                          EdgeInsets.all(12),
                        )
                        .make();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
