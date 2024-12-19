import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    int index = 0;
    return Scaffold(
      backgroundColor: kbgColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: FadeInLeft(
          duration: Duration(milliseconds: 500),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // My Image
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: kblack,
                        blurRadius: 12,
                        spreadRadius: 1,
                      )
                    ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/food-delivery(foodel)/binary_khaled.jpeg',
                    width: 300,
                  ),
                ),
              ),
              // Sized
              SizedBox(height: 40),
              // My Name

              Container(
                alignment: Alignment.center,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Khaled Fetah",
                    style: GoogleFonts.pacifico(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: kblack,
                    ),
                  ),
                ),
              ),
              // the job
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Flutter Mobile App Developer",
                    style: GoogleFonts.pacifico(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: kblack,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
