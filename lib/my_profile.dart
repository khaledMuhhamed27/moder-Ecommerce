import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbgColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // My Name

            Container(
              alignment: Alignment.center,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Khaled Fetah",
                  style: GoogleFonts.lobster(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
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
                  ),
                  // Flutter Mobile App Developer
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
