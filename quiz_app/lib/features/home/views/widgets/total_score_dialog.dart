import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/core/utils/app_colors.dart';
import 'package:quiz_app/core/utils/app_texts.dart';
import 'package:quiz_app/features/home/data/models/question_model.dart';

class TotalScoreDialog extends StatelessWidget {
  const TotalScoreDialog({super.key, required this.totalScore, required this.yourScore, required this.retestOnTap});

  final int totalScore;
  final int yourScore;
  final void Function()? retestOnTap ;
  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: AppColors.whiteColor,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close,
                  size: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 43.0, vertical: 10),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 26),

                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.primaryColor),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        children: [
                          // format code --> control alt l
                          Text(
                            AppTexts.result,
                            style: GoogleFonts.almarai(
                                fontSize: 16, fontWeight: FontWeight.w700 ,
                            color: AppColors.lightBlack
                            ),
                          ),const SizedBox(
                            height: 18,
                          ) , Text(
                           "$yourScore/${totalScore*10}",
                            style: GoogleFonts.almarai(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),

                        ],
                      ),
                    ),
                    const SizedBox(height: 24,),


                    Container(
                      padding: const EdgeInsets.all(13),

                      alignment: Alignment.center,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: AppColors.primaryColor)
                      ),
                      child: const Text(AppTexts.reviewYourAnswers,
                      style: TextStyle(
                        fontSize:14 ,
                        fontWeight: FontWeight.w700,
                        color:AppColors.primaryColor

                      ),
                      ),
                    ),
                    const SizedBox(height: 16,),
                    GestureDetector(
                      onTap:retestOnTap ,

                      child: Container(
                        padding: const EdgeInsets.all(13),

                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        color: AppColors.primaryColor
                      ),
                        child:const Text(AppTexts.retest ,
                        style: TextStyle(
                            fontSize:14 ,
                            fontWeight: FontWeight.w700,

                            color:AppColors.whiteColor

                        ),
                        )
                      ),
                    ) ,
                    const SizedBox(height: 25,),

                  ],
                ),
              )
            ]));
  }
}
