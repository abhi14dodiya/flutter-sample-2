import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  void playsound(int i){
    final player = AudioCache();
    player.play('note$i.wav');
  }
  Expanded buildbuttons({Color color,int soundno}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed:(){
          playsound(soundno);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body:  SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildbuttons(color: Colors.red, soundno: 1),
              buildbuttons(color: Colors.orange, soundno: 2),
              buildbuttons(color: Colors.yellow, soundno: 3),
              buildbuttons(color: Colors.green, soundno: 4),
              buildbuttons(color: Colors.lightBlue, soundno: 5),
              buildbuttons(color: Colors.blue, soundno: 6),
              buildbuttons(color: Colors.purple, soundno: 7),

            ],
          ),
        ),
      )

      );
  }
}