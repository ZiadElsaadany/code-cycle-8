import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_texts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
        )
      ),
      child: Text(AppTexts.appName,
        style: TextStyle(
            color: Colors.white,
            fontSize: 18
            ,
            fontWeight: FontWeight.w700

        ),
      ),
    );
  }
}
