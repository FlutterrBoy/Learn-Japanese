import 'package:flutter/material.dart';
import '../classes/all.dart';
import 'package:audioplayers/audioplayers.dart';

class NumberCard extends StatelessWidget {
  NumberCard(
      {required this.all,
      required this.color,
      required this.asset,
      required this.color2});

  final All all;
  final Color color;
  final Color color2;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Card(
        elevation: 5,
        shadowColor: Color.fromARGB(132, 244, 86, 54),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        color: color,
        child: ListTile(
          title: Text(all.jpName),
          subtitle: Text(all.enName),
          trailing: Padding(
            padding: EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () {
                try {
                  final playerAudio = AudioCache(prefix: asset);
                  playerAudio.play(all.sound);
                } catch (ex) {
                  print(ex);
                }
              },
              icon: Icon(
                Icons.volume_up_rounded,
                size: 23,
                color: Colors.grey.shade800,
              ),
            ),
          ),
          leading: Container(
              decoration: BoxDecoration(
                  color: color2, borderRadius: BorderRadius.circular(20)),
              child: Image.asset(all.photo)),
        ),
      ),
    );
  }
}
