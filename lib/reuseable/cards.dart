import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardWidget extends StatelessWidget {
  CardWidget(
      {this.color, required this.text, required this.toDo, required this.img});

  final text;
  final color;
  final String img;
  Function() toDo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: color,
        child: ListTile(
          onTap: toDo,
          title: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  text,
                  style: GoogleFonts.sen(
                    fontSize: 16,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),

              //
              //
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset(
                  img,
                  scale: 21,
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
