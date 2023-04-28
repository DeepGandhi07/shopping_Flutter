import 'package:ecommerce_shopping/consts/consts.dart';
import 'package:ecommerce_shopping/widgets_common/bg_widget.dart';
import 'package:ecommerce_shopping/widgets_common/customtextField.dart';
import 'package:ecommerce_shopping/widgets_common/login_button.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Edit Profile",
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(imgProfile2, width: 100, fit: BoxFit.cover)
                .box
                .clip(Clip.antiAlias)
                .roundedFull
                .make(),
            10.heightBox,
            loginButton(
              onPress: () {},
              color: redColor,
              textColor: whiteColor,
              title: Text('change'),
            ),
            Divider(),
            20.heightBox,
            customColorField(
              hint: nameHint,
              title: name,
              isPass: false,
            ),
            customColorField(
              hint: passwordHint,
              title: password,
              isPass: true,
            ),
            20.heightBox,
            loginButton(
              onPress: () {},
              color: redColor,
              textColor: whiteColor,
              title: Text('Save'),
            ),
          ],
        )
            .box
            .padding(EdgeInsets.all(16))
            .margin(EdgeInsets.only(top: 50, left: 12, right: 12))
            .rounded
            .white
            .shadowSm
            .make(),
      ),
    );
  }
}
