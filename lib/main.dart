import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundId) {
    final player = AudioCache();
    player.play('note$soundId.wav');
  }

  Expanded buildKey(Color color, int soundId) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          playSound(soundId);
        },
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
              buildKey(Colors.red, 1),
              buildKey(Colors.green, 2),
              buildKey(Colors.blue, 3),
              buildKey(Colors.yellow, 4),
              buildKey(Colors.teal, 5),
              buildKey(Colors.purple, 6),
              buildKey(Colors.brown, 7),
            ],
          ),
        ),
      ),
    );
  }
}

Expanded mainView() {}
