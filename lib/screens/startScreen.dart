import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tuko_app_fix/screens/colors_page.dart';
import 'package:tuko_app_fix/screens/family_page.dart';
import 'package:tuko_app_fix/screens/phrase_page.dart';
import '../reuseable/cards.dart';
import '../screens/numbers_page.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 87, 99, 209),
        centerTitle: true,
        title: Text(
          "TUKO",
          style:
              GoogleFonts.pacifico(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/sky.jpg"),
            fit: BoxFit.cover,
            opacity: 0.5,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 100),
            Container(
              width: 350,
              height: 80,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(133, 87, 202, 255),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(13),
                      topLeft: Radius.circular(13))),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        "Learn Japanese",
                        style: GoogleFonts.josefinSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    //
                    //

                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset(
                        "assets/icons/japanese.png",
                        scale: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 90),
            //
            //
            CardWidget(
              text: "Numbers",
              toDo: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const NumbersPage();
                }));
              },
              color: Color(0xffEAB595),
              img: "assets/icons/numbers1.png",
            ),
            //
            //
            CardWidget(
              text: "Family Members",
              toDo: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const FamilyMembers();
                }));
              },
              color: Color(0xffD87F81),
              img: "assets/icons/family1.png",
            ),
            //
            //
            CardWidget(
              text: "Colors",
              toDo: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const ColorsPage();
                }));
              },
              color: Color.fromARGB(255, 50, 157, 129),
              img: "assets/icons/colorpalette.png",
            ),
            //
            //
            CardWidget(
              text: "Phrases",
              toDo: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const PhrasePage();
                }));
              },
              color: Color.fromARGB(255, 68, 130, 155),
              img: "assets/icons/typography.png",
            ),

            SizedBox(height: 70),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Made by",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w300),
                ),
                Text(
                  " FlutterBoy",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
