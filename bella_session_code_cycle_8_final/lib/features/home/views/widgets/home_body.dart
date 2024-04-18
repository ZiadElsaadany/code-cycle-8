import 'package:bella_session_code_cycle_8_final/core/utils/app_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.asset(AppImages.banner,
              width: double.infinity,
              height:size.height*0.22,
              fit: BoxFit.cover,
            ),
          ),


          Expanded(
            child: ListView.builder(
 itemCount: 1,
                itemBuilder: (c,index)  {
              return Container(

                decoration: BoxDecoration(
                  color:AppColors.orange.withOpacity(0.1)
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: Container(


                        height: 30,

                        width: 30,

                        child: Icon(Icons.favorite_border,
                        color: AppColors.orange,
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
