import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class CustomHomeDivider extends StatelessWidget {
  const CustomHomeDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return  Divider(
      color: AppColors.primaryColor.withOpacity(0.5),
      endIndent: 15,
      indent: 15,
    );
  }
}
