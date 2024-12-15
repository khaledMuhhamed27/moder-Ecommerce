class OnBoard {
  final String image, text1, text2;

  OnBoard({
    required this.image,
    required this.text1,
    required this.text2,
  });
}

List<OnBoard> onborad = [
  OnBoard(
    image: 'assets/food-delivery(foodel)/onboard_1.png',
    text1: 'Grab Your \nDelicious food!',
    text2: 'Delivery food in your phone',
  ),
  OnBoard(
    image: 'assets/food-delivery(foodel)/onboard_2.png',
    text1: 'Fast & Reliable \nDelivery Service',
    text2: 'Get your food delivered hot and fresh',
  ),
  OnBoard(
    image: 'assets/food-delivery(foodel)/onboard_3.png',
    text1: 'Exclusive Deals \n& Offers',
    text2: 'Save more with amazing discounts',
  ),
];
