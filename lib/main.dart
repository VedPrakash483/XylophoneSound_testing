import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'audioplayer.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundnumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$soundnumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/secondpage': (context) => AudioPlayerWidget(url: url, start: , end: end),
      },
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: GestureDetector(
                    onTap: () async {
                      //link the page here
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  child: GestureDetector(
                    onTap: () async {
                      playsound(2);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  child: GestureDetector(
                    onTap: () async {
                      playsound(3);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  child: GestureDetector(
                    onTap: () async {
                      playsound(4);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  child: GestureDetector(
                    onTap: () async {
                      playsound(5);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.indigo,
                  child: GestureDetector(
                    onTap: () async {
                      playsound(6);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.purple[700],
                  child: GestureDetector(
                    onTap: () async {
                      playsound(7);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
