import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.rose.withOpacity(0.6),
                AppColors.rose.withOpacity(0),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
            ),
            color: AppColors.rose,
            shape: BoxShape.circle
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/Group 239097.png",
            height: 50,
            ),
          ),
        ),
        Text( "Milkshake")
      ],
    );
  }
}
