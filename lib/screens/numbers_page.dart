import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../reuseable/all_card.dart';
import '../classes/all.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<All> numberList = const [
    All(
      enName: "One",
      jpName: "Ichi",
      photo: "assets/images/numbers/number_one.png",
      sound: "number_one_sound.mp3",
    ),
    All(
      enName: "Two",
      jpName: "Ni",
      photo: "assets/images/numbers/number_two.png",
      sound: "number_two_sound.mp3",
    ),
    All(
      enName: "Three",
      jpName: "San",
      photo: "assets/images/numbers/number_three.png",
      sound: "number_three_sound.mp3",
    ),
    All(
      enName: "Four",
      jpName: "Shi",
      photo: "assets/images/numbers/number_four.png",
      sound: "number_four_sound.mp3",
    ),
    All(
      enName: "Five",
      jpName: "Ato",
      photo: "assets/images/numbers/number_five.png",
      sound: "number_five_sound.mp3",
    ),
    All(
      enName: "Six",
      jpName: "Roku",
      photo: "assets/images/numbers/number_six.png",
      sound: "number_six_sound.mp3",
    ),
    All(
      enName: "Seven",
      jpName: "Shichi",
      photo: "assets/images/numbers/number_seven.png",
      sound: "number_seven_sound.mp3",
    ),
    All(
      enName: "Eight",
      jpName: "Hachi",
      photo: "assets/images/numbers/number_eight.png",
      sound: "number_eight_sound.mp3",
    ),
    All(
      enName: "Nine",
      jpName: "Kyuu",
      photo: "assets/images/numbers/number_nine.png",
      sound: "number_nine_sound.mp3",
    ),
    All(
      enName: "Ten",
      jpName: "Juu",
      photo: "assets/images/numbers/number_ten.png",
      sound: "number_ten_sound.mp3",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 195, 195, 195),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(201, 180, 118, 99),
        centerTitle: true,
        title: Text(
          "Numbers",
          style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
          itemCount: numberList.length,
          itemBuilder: (context, index) {
            return NumberCard(
              all: numberList[index],
              color: Color.fromARGB(255, 234, 182, 149),
              asset: "assets/sounds/numbers/",
              color2: Color.fromARGB(201, 180, 118, 99),
            );
          }),
    );
  }
}
