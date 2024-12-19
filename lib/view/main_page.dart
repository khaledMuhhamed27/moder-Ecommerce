import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottom_icons.dart';
import 'package:flutter_application_1/consts.dart';
import 'package:flutter_application_1/my_profile.dart';
import 'package:flutter_application_1/view/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  //
  final List selectedPage = [
    const HomePage(),
    Center(
      child: Text(
        "Text Message",
        style: GoogleFonts.josefinSans(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    Center(
        child: Text(
      "Explore",
      style: GoogleFonts.josefinSans(
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    )),
    MyProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbgColor,
      bottomNavigationBar: Container(
        height: 85,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...List.generate(
              bottomIcons.length,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: [
                      // icons
                      Icon(
                        currentIndex == index
                            ? bottomIcons[index].selected
                            : bottomIcons[index].unselected,
                        color: kblack,
                        size: 30,
                      ),
                      // sized
                      const SizedBox(
                        height: 10,
                      ),
                      //
                      Container(
                        decoration: const BoxDecoration(
                          color: kblack,
                          shape: BoxShape.circle,
                        ),
                        width: currentIndex == index ? 7 : 0,
                        height: currentIndex == index ? 7 : 0,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      // Body
      body: selectedPage[currentIndex],
    );
  }
}
