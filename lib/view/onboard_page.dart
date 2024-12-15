import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts.dart';
import 'package:flutter_application_1/view/main_page.dart';
import 'package:flutter_application_1/model/onboard_model.dart';
import 'package:google_fonts/google_fonts.dart';

class AppOnBoardPage extends StatefulWidget {
  const AppOnBoardPage({super.key});

  @override
  State<AppOnBoardPage> createState() => _AppOnBoardPageState();
}

class _AppOnBoardPageState extends State<AppOnBoardPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              itemCount: onborad.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    // image
                    Positioned(
                      top: -70,
                      left: 0,
                      right: 0,
                      child: FadeInDown(
                        delay: const Duration(milliseconds: 700),
                        child: Image.asset(
                          onborad[index].image,
                          width: 600,
                          height: 600,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    // title
                    Positioned(
                        top: MediaQuery.of(context).size.height / 1.9,
                        child: FadeInUp(
                          delay: const Duration(milliseconds: 500),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // text 1
                                Text(
                                  onborad[index].text1,
                                  style: GoogleFonts.karla(
                                    color: Colors.white,
                                    fontSize: 44,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // SizedBox
                                const SizedBox(
                                  height: 15,
                                ),

                                // text 2
                                Text(
                                  onborad[index].text2,
                                  style: GoogleFonts.karla(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ))
                  ],
                );
              }),
          // points
          Positioned(
              bottom: 170,
              left: 25,
              child: FadeInUp(
                delay: const Duration(milliseconds: 500),
                child: Row(
                  children: [
                    ...List.generate(
                        onborad.length,
                        (index) => AnimatedContainer(
                              duration: const Duration(milliseconds: 250),
                              height: 5,
                              width: 50,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                //color
                                color: currentIndex == index
                                    ? Colors.white
                                    : Colors.white.withOpacity(0.5),
                              ),
                            ))
                  ],
                ),
              )),
          Positioned(
              bottom: 30,
              child: FadeInUp(
                delay: const Duration(milliseconds: 500),
                child: SizedBox(
                  height: 75,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainPage()));
                    },
                    color: korange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    minWidth: MediaQuery.of(context).size.width - 50,
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: GoogleFonts.josefinSans(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: kblack,
                        ),
                      ),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
