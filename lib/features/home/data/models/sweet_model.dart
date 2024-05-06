import 'package:flower_code_cycle_8/core/utils/app_images.dart';

class SweetModel  {
  final String image;
  final String title;
  final String desc;
  final double price;

  SweetModel(
  {
    required this.title,
    required this.image,
    required this.desc,
    required this.price
}
      );

}

List<SweetModel> bestSelling = [
  SweetModel(title: "Donuts", image: "assets/images/image 8.png", desc: "Flawor : Creamy", price: 50),
  SweetModel(title: "Piece of cake", image: "assets/images/image 8.png", desc: "Flawor : Creamy", price: 50),
  SweetModel(title: "Chocolate Milkshake", image: "assets/images/image 8.png", desc: "Flawor : Creamy", price: 50),
] ;