class CategoryModel {
  final String title;
  final String image;
  CategoryModel(
  {
    required this.title,
    required this.image
}
      );
}

List<CategoryModel >  categories = [
  CategoryModel(
    title: "Milkshake",
    image:"assets/images/Group 239097.png"

  ) ,
  CategoryModel(
    title: "Flore vitamin",
    image:"assets/images/image 13.png"
  ) ,
];