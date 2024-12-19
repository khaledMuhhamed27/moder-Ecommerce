import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts.dart';
import 'package:flutter_application_1/model/category_model.dart';
import 'package:flutter_application_1/model/product_model.dart';
import 'package:flutter_application_1/provider/cart_provider.dart';
import 'package:flutter_application_1/view/cart.dart';
import 'package:flutter_application_1/widgets/food_pro_itm.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectIndex = 0;
  // listb all category
  List<MyProductModel> productModi = [];
  @override
  void initState() {
    super.initState();
    if (myCategories.isNotEmpty) {
      category = myCategories[0].name;
      filterProductByCategory(category);
    }
  }

  String category = '';
  void filterProductByCategory(String selectedCategory) {
    setState(() {
      category = selectedCategory;
      productModi = myproductModel
          .where((element) =>
              element.category.toLowerCase() == selectedCategory.toLowerCase())
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    ClassProvider cartProvider = Provider.of<ClassProvider>(context);

    return SafeArea(
        child: Column(
      children: [
        // header
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Expanded(
                  child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Your Location",
                        style: GoogleFonts.karla(
                          fontSize: 16,
                          color: kblack,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down,
                        color: kblack,
                        size: 20,
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  //icon
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: korange,
                        size: 20,
                      ),
                      // Sized
                      const SizedBox(
                        width: 5,
                      ),
                      // Text
                      Text(
                        "Khaled Fetah, Istanbul",
                        style: GoogleFonts.karla(
                          fontSize: 16,
                          color: kblack,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  )
                ],
              )),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black12,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(Icons.search),
                  ),
                  // Sized
                  const SizedBox(width: 10),
                  //
                  Stack(alignment: Alignment.topCenter, children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Cart()));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 17),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black12,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          Icons.shopping_cart_outlined,
                          color: kblack,
                        ),
                      ),
                    ),
                    // quntitiy orders
                    cartProvider.carts.isNotEmpty
                        ? Positioned(
                            right: 0,
                            top: 0,
                            child: GestureDetector(
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: const BoxDecoration(
                                  color: Color(0xfff95f60),
                                  shape: BoxShape.circle,
                                ),
                                child: Text(
                                  cartProvider.carts.length.toString(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ),
                            ))
                        : Container(),
                  ]),
                ],
              )
            ],
          ),
        ),
        // sized
        const SizedBox(height: 35),
        // title for products
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            "Let's find the best food around youg",
            style: GoogleFonts.josefinSans(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              letterSpacing: -.4,
              color: kblack,
            ),
          ),
        ),
        // Sized
        const SizedBox(height: 25),
        // title for category
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // text 1
              Text(
                "Find by category",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: kblack,
                ),
              ),
              // text 2
              Text(
                "See All",
                style: TextStyle(
                  color: korange,
                ),
              )
            ],
          ),
        ),
        // sized
        const SizedBox(height: 25),
        // list categories
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(
                  myCategories.length,
                  (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            filterProductByCategory(myCategories[index].name);
                          });
                        },
                        child: Container(
                          height: 105,
                          width: 86,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: category == myCategories[index].name
                                  ? Border.all(width: 2.5, color: korange)
                                  : Border.all(color: Colors.white)),
                          //
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 47,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: kblack.withOpacity(0.4),
                                            offset: const Offset(0, 10),
                                            blurRadius: 12,
                                            spreadRadius: 5,
                                          )
                                        ]),
                                  ),
                                  // images for category
                                  Image.asset(
                                    myCategories[index].image,
                                    width: 50,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                              // sized
                              const SizedBox(height: 20),
                              // title for category
                              Text(myCategories[index].name,
                                  style: GoogleFonts.josefinSans(
                                    color: kblack,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ),
                      ))
            ],
          ),
        ),
        // Sized
        const SizedBox(height: 25),
        // titles
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            "Result (${productModi.length}) items",
            style: TextStyle(
              color: kblack.withOpacity(0.6),
              fontWeight: FontWeight.bold,
              letterSpacing: -.2,
            ),
          ),
        ),
        // sized
        const SizedBox(height: 25),
        // Section
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: [
              ...List.generate(
                productModi.length,
                (index) => Padding(
                  padding: index == 0
                      ? const EdgeInsets.only(left: 25, right: 25)
                      : const EdgeInsets.only(right: 25),
                  child: FoodProductItems(
                    productModel: productModi[index],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
