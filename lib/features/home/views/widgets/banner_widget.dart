import 'package:flower_code_cycle_8/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppImages.bannerImage) ,
        Positioned(
             top: 15,

            child: Text("Choose What Suits \n Your Test"))
      ],
    )     ;
  }
}
