import 'package:bill_app_code_cycle_8/core/utils/app_colors.dart';
import 'package:bill_app_code_cycle_8/core/utils/app_images.dart';
import 'package:bill_app_code_cycle_8/features/home/views/widgets/banner_widget.dart';
import 'package:bill_app_code_cycle_8/features/home/views/widgets/food_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
         BannerWidget(),
      const SizedBox(height: 10,),
      Expanded(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,

          ),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,

      itemCount: 5,
      itemBuilder: (c,index) {
          return FoodItem();
        }),
      )

        ],
      ),
    );
  }
}
