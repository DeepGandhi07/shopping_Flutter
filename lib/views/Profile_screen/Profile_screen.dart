import 'package:ecommerce_shopping/consts/social_list.dart';
import 'package:ecommerce_shopping/views/Profile_screen/components/details_buttons.dart';
import 'package:ecommerce_shopping/widgets_common/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_shopping/consts/consts.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                //Edit Profile button
                Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.edit,
                    color: whiteColor,
                  ),
                ).onTap(
                  () {},
                ),

                //User Details Section
                Row(
                  children: [
                    Image.asset(imgProfile, width: 100, fit: BoxFit.cover)
                        .box
                        .clip(Clip.antiAlias)
                        .roundedFull
                        .make(),
                    10.widthBox,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Dummy User".text.fontFamily(semibold).white.make(),
                          5.heightBox,
                          "customer@example.com".text.white.make(),
                        ],
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: whiteColor),
                      ),
                      onPressed: () {},
                      child: "Logout".text.fontFamily(semibold).white.make(),
                    )
                  ],
                ),

                20.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    detailsCard(
                        width: (context.width / 3.4),
                        count: "00",
                        title: "in your cart"),
                    detailsCard(
                        width: (context.width / 3.4),
                        count: "00",
                        title: "in your Wishlist"),
                    detailsCard(
                        width: (context.width / 3.4),
                        count: "00",
                        title: "your orders"),
                  ],
                ),

                //Buttons section
                ListView.separated(
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: lightGrey,
                      );
                    },
                    itemCount: profileButtonsList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: "${profileButtonsList[index]}".text.make(),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
