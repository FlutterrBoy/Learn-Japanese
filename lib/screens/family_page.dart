import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../reuseable/all_card.dart';
import '../classes/all.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});

  final List<All> list = const [
    All(
      enName: "Father",
      jpName: "父",
      photo: "assets/images/family_members/father.png", // father
      sound: "father.wav",
    ),
    All(
      enName: "Mother",
      jpName: "母",
      photo: "assets/images/family_members/mother.png", // mother
      sound: "mother.wav",
    ),
    All(
      enName: "Grand Father",
      jpName: "お祖父さん",
      photo: "assets/images/family_members/gfather.png", //grand Father
      sound: "gfather.wav",
    ),
    All(
      enName: "Grand Mother",
      jpName: "祖母",
      photo: "assets/images/family_members/gmother.png", // grand Mother
      sound: "gmother.wav",
    ),
    All(
      enName: "Older Brother",
      jpName: "お兄さん",
      photo: "assets/images/family_members/older_brother.png",
      sound: "olderbother.wav",
    ),
    All(
      enName: "Older Sister",
      jpName: "姉",
      photo: "assets/images/family_members/older_sister.png",
      sound: "oldersister.wav",
    ),
    All(
      enName: "Young Brother",
      jpName: "弟",
      photo: "assets/images/family_members/young_brother.png",
      sound: "youngerbrohter.wav",
    ),
    All(
      enName: "Young Sister",
      jpName: "妹",
      photo: "assets/images/family_members/younger_sister.png",
      sound: "youngersister.wav",
    ),
    All(
      enName: "Son",
      jpName: "息子",
      photo: "assets/images/family_members/son.png",
      sound: "son.wav",
    ),
    All(
      enName: "Daughter",
      jpName: "娘",
      photo: "assets/images/family_members/daughter.png",
      sound: "daughter.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 195, 195, 195),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(162, 159, 60, 61),
        centerTitle: true,
        title: Text(
          "Family Members",
          style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return NumberCard(
              all: list[index],
              color: Color.fromARGB(255, 218, 135, 137),
              asset: "assets/sounds/family_members/",
              color2: Color.fromARGB(162, 159, 60, 61),
            );
          }),
    );
  }
}
