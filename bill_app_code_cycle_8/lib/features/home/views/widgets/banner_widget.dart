import 'package:flutter/material.dart';

import '../../../../core/utils/app_images.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Image.asset(
        AppImages.banner,
        height: MediaQuery.of(context).size.height*0.25,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
    );
  }
}
