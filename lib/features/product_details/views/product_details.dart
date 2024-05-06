import 'package:flower_code_cycle_8/core/utils/app_colors.dart';
import 'package:flower_code_cycle_8/features/product_details/views/bottom_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

import '../../home/data/models/sweet_model.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key, required this.index});
final int index;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.rose,
      body: CustomScrollView(
        physics: NeverScrollableScrollPhysics(),
        slivers: [
          SliverAppBar(
            leading: const SizedBox(),

            toolbarHeight: MediaQuery.of(context).size.height*0.35,
            backgroundColor: AppColors.rose,
            flexibleSpace:  Center(
              child: Stack(
                children: [
                 SizedBox(
                   height:  MediaQuery.of(context).size.height*0.4,
                   width: double.infinity,
                   child: Image.asset(bestSelling[widget.index].image),
                 ),
                  Row(
                    children: [
                     IconButton(onPressed: ( ) {
                       Navigator.pop(context);
                     }
                         , icon:  Icon(Icons.arrow_back))
                    ],
                  )
                ],
              ),
            ) ,
          ),
          SliverFillRemaining(
            child: Container(
              decoration:  BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),

                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text(bestSelling[widget.index].title

                        ,
                          maxLines: 2 ,
                            overflow: TextOverflow.ellipsis,
                        )),
                        Text("${bestSelling[widget.index].price} LE"),
                      ],
                    ) ,
                    Text(bestSelling[widget.index].desc) ,
                    Divider(
                      color: AppColors.rose
                      ,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [
                            Color(0xffF7CCC6),
                            Color(0xffFCEFED),
                            Color(0xffFFFFFF),
                          ]
                        )
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [


                          GestureDetector(
                            onTap: ( ) {

                              if(bestSelling[widget.index].count >0 ) {
                                setState(() {
                                  bestSelling[widget.index].count = bestSelling[widget.index].count - 1  ;
                                });
                              }
                            },
                            child: CircleAvatar(
                              backgroundColor: AppColors.brown,
                            child: Icon(Icons.remove,

                            color: Colors.white,
                            ),
                            ),
                          ),
                          SizedBox(width: 20,),

                          Text("${bestSelling[widget.index].count}"),
                          SizedBox(width: 20,),
                          GestureDetector(
                            onTap: ( ) {
                              setState(() {
                                bestSelling[widget.index].count = bestSelling[widget.index].count + 1  ;
                              });
                            },
                            child: CircleAvatar(
                              backgroundColor: AppColors.brown,
                              child: Icon(Icons.add,
                                color: Colors.white,

                              ),

                            ),
                          ),

                        ],
                      ),
                    ) ,
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.rose ,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(

                        children: [
                          Text("Selected items  (${bestSelling[widget.index].count})") ,
                          Expanded(child: Text("Total : ${bestSelling[widget.index].count *bestSelling[widget.index].price } LE",
                          textAlign: TextAlign.end,
                          )) ,

                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap:  ( ) {


                        cart.add(bestSelling[widget.index]);

                        showModalBottomSheet(context: context, builder: (c) {
                          return   BottomSheetWidget();
                        } );

                      } ,
                      child: Container(
                        alignment: Alignment.center,
                        height: 100,
                        decoration: BoxDecoration(
                          color: AppColors.brown
                        ),
                        child: Text("Add to cart",
                        style: TextStyle(
                      color: AppColors.white
                        ),
                        ),
                      ),
                    )



                  ],
                ),
              ),
            ),


          )
        ],
      ),
    ) ;
  }
}
