class MyProductModel {
  final String image, name, category;
  final double price, rate, distance;

  MyProductModel({
    required this.name,
    required this.image,
    required this.category,
    required this.distance,
    required this.price,
    required this.rate,
  });
}

List<MyProductModel> myproductModel = [
  // 1 = Ramen
  //
  // : 1
  MyProductModel(
    name: 'Sapporo Miso',
    image: 'assets/food-delivery(foodel)/ramen/sapporo_miso_ramen.png',
    category: 'Ramen',
    distance: 150,
    price: 4.9,
    rate: 4.1,
  ),
  // : 2
  MyProductModel(
    name: 'Shrimp Fried Rice',
    image: 'assets/food-delivery(foodel)/ramen/shrimp_fried_rice.png',
    category: 'Ramen',
    distance: 80,
    price: 5.5,
    rate: 4.9,
  ),
  // : 3
  MyProductModel(
    name: 'Fullset Ramen',
    image: 'assets/food-delivery(foodel)/ramen/fullset_ramen.png',
    category: 'Ramen',
    distance: 110,
    price: 4.5,
    rate: 5.0,
  ),
  // : 4
  MyProductModel(
    name: 'Hakata Ramen',
    image: 'assets/food-delivery(foodel)/ramen/hakata_ramen.png',
    category: 'Ramen',
    distance: 350,
    price: 10.0,
    rate: 3.5,
  ),
  // : 5
  MyProductModel(
    name: 'Kurume Ramen',
    image: 'assets/food-delivery(foodel)/ramen/kurume_ramen.png',
    category: 'Ramen',
    distance: 40,
    price: 10.0,
    rate: 4.5,
  ),
  // 2 = Burger
  //
  // : 1
  MyProductModel(
    name: 'Beef Burger',
    image: 'assets/food-delivery(foodel)/burger/beef-burger.png',
    category: 'Burger',
    distance: 70,
    price: 3.9,
    rate: 5.0,
  ),
  // : 2
  MyProductModel(
    name: 'Fried Chicken Burger',
    image: 'assets/food-delivery(foodel)/burger/fried-chicken-burger.png',
    category: 'Burger',
    distance: 200,
    price: 3.9,
    rate: 4.8,
  ),
  // : 3
  MyProductModel(
    name: 'Cheese Burger',
    image: 'assets/food-delivery(foodel)/burger/cheese-burger.png',
    category: 'Burger',
    distance: 130,
    price: 2.5,
    rate: 3.6,
  ),
  // : 4
  MyProductModel(
    name: 'Grilled Beef Borger',
    image: 'assets/food-delivery(foodel)/burger/grilled-beef-burger.png',
    category: 'Burger',
    distance: 320,
    price: 10.0,
    rate: 4.3,
  ),

  // 3 = Salad
  // : 1
  MyProductModel(
    name: 'Vegetable Salad',
    image: 'assets/food-delivery(foodel)/veg-salad.png',
    category: 'Salad',
    distance: 150,
    price: 3.9,
    rate: 3.5,
  ),
  // : 2
  MyProductModel(
    name: 'Salad',
    image: 'assets/food-delivery(foodel)/salad.png',
    category: 'Salad',
    distance: 150,
    price: 3.4,
    rate: 4.0,
  ),
  // : 3
  MyProductModel(
    name: 'Mix Salad',
    image: 'assets/food-delivery(foodel)/mix-salad.png',
    category: 'Salad',
    distance: 150,
    price: 3.9,
    rate: 5,
  ),
  // 4 = Pancake
  // : 1
  MyProductModel(
    name: 'Bonanza Waffle',
    image: 'assets/food-delivery(foodel)/berry-bonanza-waffle.png',
    category: 'Pancake',
    distance: 190,
    price: 4.9,
    rate: 4.2,
  ),
  // : 2
  MyProductModel(
    name: 'Clasic Pankace',
    image: 'assets/food-delivery(foodel)/pancake.png',
    category: 'Pancake',
    distance: 220,
    price: 4.9,
    rate: 5.0,
  ),
];
