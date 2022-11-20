import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../reuseable/all_card.dart';
import '../classes/all.dart';

class PhrasePage extends StatelessWidget {
  const PhrasePage({super.key});

  final List<All> list = const [
    All(
      enName: "What is your name ?",
      jpName: "名前はなんですか ?",
      photo: "assets/icons/temple.png",
      sound: "what_is_your_name.wav",
    ),
    All(
      enName: "How are you feeling ?",
      jpName: "ご気分はいかがですか ?",
      photo: "assets/icons/temple.png", // grand Mother
      sound: "how_are_you_feeling.wav",
    ),
    All(
      enName: "I love anime",
      jpName: "私はアニメが大好きです",
      photo: "assets/icons/temple.png",
      sound: "i_love_anime.wav",
    ),
    All(
      enName: "I love programming",
      jpName: "プログラミングが大好き",
      photo: "assets/icons/temple.png",
      sound: "i_love_programming.wav",
    ),
    All(
      enName: "Programming is easy",
      jpName: "プログラミングは簡単です",
      photo: "assets/icons/temple.png",
      sound: "programming_is_easy.wav",
    ),
    All(
      enName: "Where are you going ?",
      jpName: "どこに行くの ?",
      photo: "assets/icons/temple.png",
      sound: "where_are_you_going.wav",
    ),
    All(
      enName: "Are you coming",
      jpName: "来ますか",
      photo: "assets/icons/temple.png", // father
      sound: "are_you_coming.wav",
    ),
    All(
      enName: "Yes I'm coming",
      jpName: "はい、来ます",
      photo: "assets/icons/temple.png",
      sound: "yes_im_coming.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 195, 195, 195),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 72, 170, 235),
        centerTitle: true,
        title: Text(
          "Phrases",
          style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return NumberCard(
              all: list[index],
              color: Color.fromARGB(255, 106, 168, 209),
              asset: "assets/sounds/phrases/",
              color2: Color.fromARGB(255, 106, 168, 209),
            );
          }),
    );
  }
}
