import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final colorDict = {
    1: Colors.red,
    2: Colors.orange,
    3: Colors.yellow,
    4: Colors.green,
    5: Colors.blue,
    6: Colors.indigo,
    7: Colors.purple,
  };

  void playNote(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  Expanded buildKey(int note) {
    return Expanded(
      child: FilledButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(colorDict[note]),
        ),
        onPressed: () {
          playNote(note);
          print('pressed button');
        },
        child: Text(''),
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
            children: [for (var i = 1; i <= 7; i++) buildKey(i)],
          ),
        ),
      ),
    );
  }
}
