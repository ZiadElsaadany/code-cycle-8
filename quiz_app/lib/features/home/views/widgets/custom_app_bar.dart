import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment:Alignment.center,
        height: 110 ,
        decoration: const BoxDecoration(
          borderRadius:BorderRadius.only(
              bottomLeft: Radius.circular( 30),
              bottomRight: Radius.circular( 30)

          ),
          color: Color(0xff006672),

        ),
        child: Text("Quiz App",style:GoogleFonts.almarai(
          color:Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 18,
        ))
    );
  }
}
