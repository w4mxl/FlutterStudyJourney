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
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // 水平方向撑满
          children: <Widget>[
            buildExpanded(color: Colors.red, audioNumber: 1),
            buildExpanded(color: Colors.orange, audioNumber: 1),
            buildExpanded(color: Colors.yellow, audioNumber: 1),
            buildExpanded(color: Colors.green, audioNumber: 1),
            buildExpanded(color: Colors.blue, audioNumber: 1),
            buildExpanded(color: Colors.teal, audioNumber: 1),
            buildExpanded(color: Colors.purple, audioNumber: 1),
          ],
        ),
      ),
    );
  }

  Expanded buildExpanded({Color color, int audioNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          player.play('note$audioNumber.wav');
        },
        child: null,
      ),
    );
  }
}
