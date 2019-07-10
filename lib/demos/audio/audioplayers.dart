/// @author: wml
/// @date  : 2019-07-09 18:12
/// @email : mxl1989@gmail.com
/// @desc  : 音频播放

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class AudioPlayerDemo extends StatelessWidget {
  final player = AudioCache(prefix: 'audio/');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('audioplayers'),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
            color: Colors.red,
            onPressed: () {
              player.play('note1.wav');
            },
            child: Text(''),
          ),
          FlatButton(
            color: Colors.orange,
            onPressed: () {
              player.play('note2.wav');
            },
            child: Text(''),
          ),
          FlatButton(
            color: Colors.yellow,
            onPressed: () {
              player.play('note3.wav');
            },
            child: Text(''),
          ),
          FlatButton(
            color: Colors.green,
            onPressed: () {
              player.play('note4.wav');
            },
            child: Text(''),
          ),
          FlatButton(
            color: Colors.blue,
            onPressed: () {
              player.play('note5.wav');
            },
            child: Text(''),
          ),
          FlatButton(
            color: Colors.teal,
            onPressed: () {
              player.play('note6.wav');
            },
            child: Text(''),
          ),
          FlatButton(
            color: Colors.purple,
            onPressed: () {
              player.play('note7.wav');
            },
            child: Text(''),
          ),
        ],
      ),
    );
  }
}
