import 'package:flower_code_cycle_8/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class SeeMoreWidget extends StatelessWidget {
  const SeeMoreWidget({super.key, required this.title, this.onPressed});
final String title ;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(title ) ,
          Spacer(),
          TextButton(
              child:Text( "See More") ,
            onPressed:onPressed,
             ),
          SizedBox(width: 8,),
          Image.asset(AppImages.seeMoreArrow)
        ],
      ),
    );
  }
}
