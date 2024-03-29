import 'package:flutter/material.dart';

class TotalScoreDialog extends StatelessWidget {
  const TotalScoreDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Column(
            children:[
              IconButton(
                onPressed:(){} ,
                icon: const Icon(Icons.close),
              )
            ]
        )
    );
  }
}
