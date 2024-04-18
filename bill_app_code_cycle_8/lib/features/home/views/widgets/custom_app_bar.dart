import 'package:bill_app_code_cycle_8/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_images.dart';

customAppBar(context )  {
   return  AppBar(
backgroundColor: AppColors.scaffoldColor,
       centerTitle: true,
       title: Image.asset(AppImages.bellaLogo ,
         height: MediaQuery.of(context).size.height*0.12,
         width: MediaQuery.of(context).size.height*0.12,


       ),
   );
}