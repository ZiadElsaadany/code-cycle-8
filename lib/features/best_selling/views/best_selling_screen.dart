import 'package:flower_code_cycle_8/features/home/data/models/sweet_model.dart';
import 'package:flutter/material.dart';

import '../../home/views/widgets/sweet_widget.dart';

class BestSellingScreen extends StatelessWidget {
  const BestSellingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: bestSelling.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
      ),
          itemBuilder: (c,index) {
        return   SweetWidget(
          index: index,

        );
      } ),
    );
  }
}
