import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.title});

  final VoidCallback  onPressed;
  final String title;



  @override
  Widget build(BuildContext context) {
    return        MaterialButton(
        shape:RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(8)
        ),
        color:AppColors.primaryColor,
        onPressed: onPressed ,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical:  11,
              horizontal :
              30.0),
          child: Text( title,
            style:GoogleFonts.almarai(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: AppColors.whiteColor,
            ),
          ),
        )
    );

  }
}
