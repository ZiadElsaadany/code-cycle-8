
import 'package:flower_code_cycle_8/core/utils/app_colors.dart';
import 'package:flower_code_cycle_8/core/utils/app_images.dart';
import 'package:flower_code_cycle_8/features/home/data/models/sweet_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SweetWidget extends StatelessWidget {
  const SweetWidget({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
      return Stack(
        alignment:  Alignment.bottomRight,
        children: [
          Container(

            padding: EdgeInsets.all(8),


            decoration: BoxDecoration(
              border: Border.all(color: AppColors.rose),
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  AppColors.rose.withOpacity(0.25) ,
                  AppColors.white
                ] ,
                begin:Alignment.topCenter ,
                end: Alignment.bottomCenter
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Image.asset(bestSelling[index].image)),
                Text(bestSelling[index].title) ,
                Text(bestSelling[index].desc,
                style: TextStyle(
                  color:Color(0xff959595)
                ),
                ) ,Text(bestSelling[index].price.toString()) ,
              ],
            ),
          ),
          const Positioned(

              top: 0,
              right: 5,
              child: Icon(Icons.favorite_border)),
          Container(
            child: Icon(Icons.add,
              color:AppColors.white,
            ),
            decoration: BoxDecoration(
              color: AppColors.black,
              borderRadius: BorderRadius.only(
                bottomRight:Radius.circular(20),
                topLeft:Radius.circular(3),
                bottomLeft: Radius.circular(0),
                topRight:Radius.circular(0),
              ),
            ),
          )
        ],
      );
  }
}
