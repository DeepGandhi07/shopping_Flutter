import 'package:ecommerce_shopping/consts/consts.dart';
import 'package:ecommerce_shopping/widgets_common/bg_widget.dart';
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
          children: [
            Image.asset(imgProfile2, width: 100, fit: BoxFit.cover)
                .box
                .clip(Clip.antiAlias)
                .roundedFull
                .make(),
          ],
        ),
      ),
    );
  }
}
