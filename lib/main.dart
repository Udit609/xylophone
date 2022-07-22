import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final audioPlayer = AudioPlayer();
    audioPlayer.play(AssetSource('note$noteNumber.wav'));
  }

  Expanded buildkey({required Color color, required int noteNuber}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        onPressed: () async {
          playSound(noteNuber);
        },
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color: Colors.red, noteNuber: 1),
              buildkey(color: Colors.orange, noteNuber: 2),
              buildkey(color: Colors.yellow, noteNuber: 3),
              buildkey(color: Colors.green, noteNuber: 4),
              buildkey(color: Colors.teal, noteNuber: 5),
              buildkey(color: Colors.blue, noteNuber: 6),
              buildkey(color: Colors.purple, noteNuber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
