import 'package:flower_code_cycle_8/core/utils/app_images.dart';
import 'package:flower_code_cycle_8/features/home/views/widgets/banner_widget.dart';
import 'package:flower_code_cycle_8/features/home/views/widgets/category_widget.dart';
import 'package:flower_code_cycle_8/features/home/views/widgets/search_home_widget.dart';
import 'package:flower_code_cycle_8/features/home/views/widgets/see_more.dart';
import 'package:flutter/material.dart';

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
              child: SearchHomeWidget(),
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
                   return SizedBox();
                 },
                 scrollDirection: Axis.horizontal,

                 itemBuilder: (c,index) {

                   return            CategoryWidget() ;
                 } ,
                 itemCount: 10,

               ),
             ) ,
           ),

            SliverToBoxAdapter(
              child: SeeMoreWidget(
                title: "Best selling",
              ),
            ),
            SliverGrid.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
            ), itemBuilder: (c,index) {
              return   SweetWidget();
            }  ,
            itemCount: 10,
            )



          ],
        ),
      ),

      // body: ,
    );
  }
}
