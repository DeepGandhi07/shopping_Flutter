import 'package:ecommerce_shopping/consts/social_list.dart';
import 'package:ecommerce_shopping/controller/auth_controller.dart';
import 'package:ecommerce_shopping/views/Profile_screen/components/details_buttons.dart';
import 'package:ecommerce_shopping/views/Profile_screen/edit_profile.dart';
import 'package:ecommerce_shopping/views/auth/login_screen.dart';
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
          child: Column(
            children: [
              //Edit Profile button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.edit,
                    color: whiteColor,
                  ),
                ).onTap(
                  () {
                    Get.to(() => EditProfile());
                  },
                ),
              ),

              //User Details Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    Image.asset(imgProfile2, width: 100, fit: BoxFit.cover)
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
                      onPressed: () async {
                        await Get.put(AuthController()).signOutMethod(context);
                        Get.offAll(() => LoginScreen());
                      },
                      child: "Logout".text.fontFamily(semibold).white.make(),
                    )
                  ],
                ),
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
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return Divider(
                    color: lightGrey,
                  );
                },
                itemCount: profileButtonsList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Image.asset(profileButtonsIcon[index], width: 22),
                    title: "${profileButtonsList[index]}"
                        .text
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .make(),
                  );
                },
              )
                  .box
                  .white
                  .rounded
                  .margin(EdgeInsets.all(12))
                  .shadowSm
                  .padding(
                    EdgeInsets.symmetric(horizontal: 16),
                  )
                  .make()
                  .box
                  .color(redColor)
                  .make()
            ],
          ),
        ),
      ),
    );
  }
}
