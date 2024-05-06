import 'package:flower_code_cycle_8/core/utils/app_images.dart';
import 'package:flower_code_cycle_8/features/home/data/models/category_model.dart';
import 'package:flower_code_cycle_8/features/home/data/models/sweet_model.dart';
import 'package:flower_code_cycle_8/features/home/views/widgets/banner_widget.dart';
import 'package:flower_code_cycle_8/features/home/views/widgets/category_widget.dart';
import 'package:flower_code_cycle_8/features/home/views/widgets/search_home_widget.dart';
import 'package:flower_code_cycle_8/features/home/views/widgets/see_more.dart';
import 'package:flower_code_cycle_8/features/home/views/widgets/sweet_widget.dart';
import 'package:flutter/material.dart';

import '../../best_selling/views/best_selling_screen.dart';
import '../../search/view/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        title: Image.asset(AppImages.logoImage,
        width: 80,
          height: 43,
        ),
        actions: [
          IconButton(
            onPressed:  ( ) {} ,
            icon: Icon(Icons.shopping_cart_outlined),
          )
        ],
      ),
      drawer: Drawer(),
      body:  Padding(
        padding: EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter
              (
              child:  BannerWidget() ,
            ),
            SliverToBoxAdapter(
              child: GestureDetector(
                  onTap: ( )  {
                    Navigator.push(context, MaterialPageRoute(builder: (c) {
                      return SearchScreen();
                    }));
                  },
                  child: SearchHomeWidget()),
            ),   SliverToBoxAdapter(
              child: SeeMoreWidget(

                title: "Discover by category",
              ),
            ),

           SliverToBoxAdapter(
             child:  SizedBox(
               height: 95,
               child: ListView.separated(
                 separatorBuilder: (c,index) {
                   return SizedBox(
                     width: 20,
                   );
                 },
                 scrollDirection: Axis.horizontal,

                 itemBuilder: (c,index) {

                   return            CategoryWidget(
                     index: index,
                   ) ;
                 } ,
                 itemCount: categories.length,

               ),
             ) ,
           ),

            SliverToBoxAdapter(
              child: SeeMoreWidget(
                onPressed: ( ){
                  Navigator.push(context, MaterialPageRoute(builder: (c) {
                    return BestSellingScreen();
                  }));
                },
                title: "Best selling",
              ),
            ),
            SliverGrid.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2 ,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10
            ), itemBuilder: (c,index) {
              return   SweetWidget(
                index: index,

              );
            }  ,
            itemCount:2
            )



          ],
        ),
      ),

      // body: ,
    );
  }
}
