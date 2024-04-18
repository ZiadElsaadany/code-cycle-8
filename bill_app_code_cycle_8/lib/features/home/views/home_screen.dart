import 'package:bill_app_code_cycle_8/core/utils/app_colors.dart';
import 'package:bill_app_code_cycle_8/core/utils/app_images.dart';
import 'package:bill_app_code_cycle_8/features/home/views/widgets/custom_app_bar.dart';
import 'package:bill_app_code_cycle_8/features/home/views/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int bottomNavIndex = 0 ;

  List<Widget>  screens =  [
    HomeBody() ,
    Center(child: Text("Favourite"),)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: customAppBar(context),
      drawer: const Drawer(),
      body: screens[bottomNavIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black.withOpacity(0.2),
        currentIndex:bottomNavIndex ,
        onTap: (index) {

setState(() {
  bottomNavIndex = index;

});
        },

        items: const [

          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "favourite"),
        ],
      ),


    );
  }
}
