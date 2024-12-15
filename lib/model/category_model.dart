class CategoryModel {
  final String image, name;
  CategoryModel({required this.image, required this.name});
}

List<CategoryModel> myCategories = [
  // 1
  CategoryModel(
    image: 'assets/food-delivery(foodel)/ramen.png',
    name: 'Ramen',
  ),
  // 2
  CategoryModel(
    image: 'assets/food-delivery(foodel)/burger.png',
    name: 'Burger',
  ),
  // 3
  CategoryModel(
    image: 'assets/food-delivery(foodel)/salad.png',
    name: 'Salad',
  ),
  // 4
  CategoryModel(
    image: 'assets/food-delivery(foodel)/pancake.png',
    name: 'Pancake',
  ),
];
