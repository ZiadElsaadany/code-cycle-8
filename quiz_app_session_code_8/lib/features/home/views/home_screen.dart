
import 'package:flutter/material.dart';
import 'package:quiz_app_session_code_8/core/utils/app_texts.dart';
import 'package:quiz_app_session_code_8/features/home/views/widgets/custom_home_body.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/widgets/app_bar_widget.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  // Map<key   ,  value>
  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(

            toolbarHeight:100 ,
          flexibleSpace:CustomAppBar(
            name: AppTexts.appName,
          ) ,
        ),
        body: const CustomHomeBody()
      ),
    );
  }
}
