import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: 33,
              vertical: 10
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AppImages.beafBurger,
                height: MediaQuery.of(context).size.height*0.15,
              ),
              Text("Beaf Burger"),
              SizedBox(height: 14,),
              Text("7.5 \$", 
              style: TextStyle(
                color: AppColors.favOrange,
                fontWeight: FontWeight.bold
              ),
              ),
            ],
          ),
        ),
        CircleAvatar(
          backgroundColor: AppColors.favOrange.withOpacity(0.1),
          child: Icon(Icons.favorite_border,
          color: AppColors.favOrange,
          ),
        ),

      ],
    );
  }
}
