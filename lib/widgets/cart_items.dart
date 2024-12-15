import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts.dart';
import 'package:flutter_application_1/model/cart_model.dart';
import 'package:flutter_application_1/provider/cart_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartItemss extends StatelessWidget {
  final CartModel cart;
  const CartItemss({super.key, required this.cart});

  @override
  Widget build(BuildContext context) {
    ClassProvider cartProvider = Provider.of<ClassProvider>(context);
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 140,
      width: size.width / 1.2,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 130,
            width: size.width - 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Positioned(
            top: -5,
            left: 0,
            child: Transform.rotate(
              angle: 10 * pi / 180,
              child: SizedBox(
                height: 130,
                width: 130,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 100,
                        width: 70,
                        decoration:
                            BoxDecoration(shape: BoxShape.circle, boxShadow: [
                          BoxShadow(
                            color: kblack.withOpacity(0.4),
                            blurRadius: 10,
                            spreadRadius: 5,
                          )
                        ]),
                      ),
                    ),
                    // image
                    Image.asset(
                      cart.productModel.image,
                      width: 130,
                    )
                  ],
                ),
              ),
            ),
          ),
          // name and desckription item
          Positioned(
            left: 150,
            right: 20,
            top: 20,
            child: Column(
              children: [
                // product name
                Text(cart.productModel.name,
                    maxLines: 1,
                    style: GoogleFonts.karla(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: kblack,
                    )),
                // Sized
                SizedBox(height: 10),
                //
                Row(
                  children: [
                    Row(
                      children: [
                        // Stars
                        Icon(
                          Icons.star_rate_rounded,
                          color: kyellow,
                        ),
                        // Sized
                        SizedBox(width: 5),
                        // stars rate
                        Text(
                          cart.productModel.rate.toString(),
                          style: TextStyle(color: kblack.withOpacity(0.8)),
                        )
                      ],
                    ),
                    // sized
                    SizedBox(width: 20),
                    // Location
                    Row(
                      children: [
                        // icon
                        Icon(
                          Icons.location_on,
                          color: kpink,
                          size: 20,
                        ),
                        // location
                        Text(
                          "${cart.productModel.distance}m",
                          style: TextStyle(
                            color: kblack.withOpacity(0.8),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                // Sized
                SizedBox(height: 20),
                // price
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\$${(cart.productModel.price).toStringAsFixed(2)}",
                      style: GoogleFonts.josefinSans(
                        color: kblack,
                        fontSize: 25,
                        letterSpacing: -1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // click -
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (cart.quantity > 1) {
                              cartProvider.recucQuantity(cart.productModel);
                            }
                          },
                          child: Container(
                            width: 25,
                            height: 40,
                            decoration: BoxDecoration(
                              color: kblack,
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(7),
                              ),
                            ),
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                        // Sized
                        SizedBox(width: 10),
                        // quantity
                        Text(
                          cart.quantity.toString(),
                          style: TextStyle(
                            color: kblack,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // +
                        SizedBox(width: 10),

                        GestureDetector(
                          onTap: () {
                            cartProvider.addCart(cart.productModel);
                          },
                          child: Container(
                            width: 25,
                            height: 40,
                            decoration: BoxDecoration(
                              color: kblack,
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(7),
                              ),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
