import 'package:flower_code_cycle_8/features/home/data/models/category_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.index});
  final int index;
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
            child: Image.asset(categories[index].image,
            height: 50,
            ),
          ),
        ),
        Text(categories[index].title)
      ],
    );
  }
}
