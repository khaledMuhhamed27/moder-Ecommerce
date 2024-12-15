import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts.dart';
import 'package:flutter_application_1/model/product_model.dart';
import 'package:flutter_application_1/provider/cart_provider.dart';
import 'package:provider/provider.dart';

class FoodProductItems extends StatelessWidget {
  final MyProductModel productModel;
  const FoodProductItems({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    Size sized = MediaQuery.of(context).size;
    ClassProvider cartProvider = Provider.of<ClassProvider>(context);
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 225,
          width: sized.width / 2.4,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        //
        Container(
          height: 285,
          width: sized.width / 2.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Transform.rotate(
                  angle: 10 * pi / 180,
                  child: SizedBox(
                    height: 160,
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        // shadow
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: kblack.withOpacity(0.3),
                                    spreadRadius: 10,
                                    blurRadius: 30,
                                  )
                                ]),
                          ),
                        ),
                        // image
                        Image.asset(
                          productModel.image,
                          height: 150,
                        )
                      ],
                    ),
                  ),
                ),

                // Sizedbox
                const SizedBox(height: 10),
                // Product Name
                Text(
                  maxLines: 1,
                  productModel.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: kblack,
                  ),
                ),
                // Sizedbox
                const SizedBox(height: 10),
                Row(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.star_rate_rounded,
                          color: kyellow,
                          size: 22,
                        ),
                        // Sizedbox
                        const SizedBox(height: 5),
                        // star count
                        Text(
                          productModel.rate.toString(),
                          style: TextStyle(
                              color: kblack.withOpacity(
                            .5,
                          )),
                        )
                      ],
                    ),
                    // Sizedbox
                    const SizedBox(width: 10),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: kpink,
                          size: 20,
                        ),
                        // Sizedbox
                        const SizedBox(width: 0),
                        Text(
                          "${productModel.distance}m",
                          style: TextStyle(
                            color: kblack.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                // Sizedbox
                const SizedBox(height: 20),
                // Price
                Text(
                  "\$${(productModel.price).toStringAsFixed(2)}",
                  style: const TextStyle(
                    color: kblack,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                )
              ],
            ),
          ),
        ),
        // shop icon
        Positioned(
            bottom: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                cartProvider.addCart(productModel);
              },
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                  color: kblack,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ))
      ],
    );
  }
}
