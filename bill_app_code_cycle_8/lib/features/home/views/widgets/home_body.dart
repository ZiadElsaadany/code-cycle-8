import 'package:bill_app_code_cycle_8/core/utils/app_colors.dart';
import 'package:bill_app_code_cycle_8/core/utils/app_images.dart';
import 'package:bill_app_code_cycle_8/features/home/views/widgets/banner_widget.dart';
import 'package:bill_app_code_cycle_8/features/home/views/widgets/food_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child:   BannerWidget(),
          ),
          SliverToBoxAdapter(
            child:  const SizedBox(height: 10,),
          ),

          SliverGrid.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,

              ),


              itemCount: 5,
              itemBuilder: (c,index) {
                return FoodItem();
              }
          ),

        ],
      ),
    );
  }
}