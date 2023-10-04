import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerWidget extends StatefulWidget {
  final String url;
  final Duration start;
  final Duration end;

  AudioPlayerWidget({required this.url, required this.start, required this.end});

  @override
  AudioPlayerWidgetState createState() => AudioPlayerWidgetState();
}

class AudioPlayerWidgetState extends State<AudioPlayerWidget> {
  AudioPlayer audioPlayer = AudioPlayer();
  double playbackSpeed = 1.0;

  @override
  void initState() {
    super.initState();
    audioPlayer.setSourceUrl(widget.url);
    audioPlayer.setReleaseMode(ReleaseMode.stop);
  }

  @override
  void dispose() {
    audioPlayer.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.play_arrow),
              onPressed: () {
                audioPlayer.play(widget.url as Source,
                    position: widget.start);
              },
            ),
            IconButton(
              icon: Icon(Icons.pause),
              onPressed: () {
                audioPlayer.pause();
              },
            ),
            DropdownButton<double>(
              value: playbackSpeed,
              onChanged: (value) {
                setState(() {
                  playbackSpeed = value!;
                });
                audioPlayer.setPlaybackRate(playbackSpeed);
              },
              items: [
                DropdownMenuItem<double>(
                  value: 0.5,
                  child: Text('0.5x'),
                ),
                DropdownMenuItem<double>(
                  value: 0.75,
                  child: Text('0.75x'),
                ),
                DropdownMenuItem<double>(
                  value: 1.0,
                  child: Text('1.0x'),
                ),
                DropdownMenuItem<double>(
                  value: 1.25,
                  child: Text('1.25x'),
                ),
                DropdownMenuItem<double>(
                  value: 1.5,
                  child: Text('1.5x'),
                ),
                DropdownMenuItem<double>(
                  value: 1.75,
                  child: Text('1.75x'),
                ),
                DropdownMenuItem<double>(
                  value: 2.0,
                  child: Text('2.0x'),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}


// If we use just_audio package

// import 'package:just_audio/just_audio.dart';
//
// AudioPlayer audioPlayer = AudioPlayer();
//
// void setPlaybackSpeed(double speed) {
//   audioPlayer.setSpeed(speed);
// }
