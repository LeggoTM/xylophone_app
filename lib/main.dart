import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int audioNo){
    final player = AudioCache();
    player.play('note$audioNo.wav');
  }

  Expanded buildKey({Color color, int soundNo}){
    return Expanded(
        child: FlatButton(
          onPressed: () {
            playSound(soundNo);
          },
          color: color,
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.purple, soundNo: 1),
              buildKey(color: Colors.green, soundNo: 2),
              buildKey(color: Colors.yellow, soundNo: 3),
              buildKey(color: Colors.orange, soundNo: 4),
              buildKey(color: Colors.red, soundNo: 5),
              buildKey(color: Colors.blue, soundNo: 6),
              buildKey(color: Colors.tealAccent, soundNo: 7),
            ],
          ),
        ),
      ),
    );
  }
}
