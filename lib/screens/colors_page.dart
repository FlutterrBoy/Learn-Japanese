import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../reuseable/all_card.dart';
import '../classes/all.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<All> colorList = const [
    All(
      enName: "Black",
      jpName: "黒い",
      photo: "assets/images/colors/color_black.png",
      sound: "black.wav",
    ),
    All(
      enName: "Brown",
      jpName: "褐色",
      photo: "assets/images/colors/color_brown.png",
      sound: "brown.wav",
    ),
    All(
      enName: "Dust Yellow",
      jpName: "ダスティイエロー",
      photo: "assets/images/colors/color_dusty_yellow.png",
      sound: "dusty_yellow.wav",
    ),
    All(
      enName: "Grey",
      jpName: "灰色",
      photo: "assets/images/colors/color_gray.png",
      sound: "gray.wav",
    ),
    All(
      enName: "Green",
      jpName: "灰色",
      photo: "assets/images/colors/color_green.png",
      sound: "green.wav",
    ),
    All(
      enName: "Red",
      jpName: "赤い",
      photo: "assets/images/colors/color_red.png",
      sound: "red.wav",
    ),
    All(
      enName: "White",
      jpName: "白い",
      photo: "assets/images/colors/color_white.png",
      sound: "white.wav",
    ),
    All(
      enName: "Yellow",
      jpName: "黄色",
      photo: "assets/images/colors/yellow.png",
      sound: "yellow.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 195, 195, 195),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 50, 157, 129),
        centerTitle: true,
        title: Text(
          "Colors",
          style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
          itemCount: colorList.length,
          itemBuilder: (context, index) {
            return NumberCard(
              all: colorList[index],
              color: Color(0xff56C596),
              asset: "assets/sounds/colors/",
              color2: Color.fromARGB(167, 74, 164, 137),
            );
          }),
    );
  }
}
