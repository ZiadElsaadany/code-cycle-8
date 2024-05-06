
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,

      child: Column(
        children: [
          SizedBox(

              child: Lottie.asset('assets/lotties/done.json')),
        ],
      ),
    );
  }
}
