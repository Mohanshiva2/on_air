import 'dart:async';
import 'dart:core';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:on_air/widgets/music_player.dart';

class PlayMusic extends StatefulWidget {
  const PlayMusic({Key? key}) : super(key: key);

  @override
  _PlayMusicState createState() => _PlayMusicState();
}

class _PlayMusicState extends State<PlayMusic> {
  static const IconSize = 30.0;

  final player = AudioAssetPlayer('assets_songs_1.mp3');

  late final StreamSubscription progressSubscription;
  late final StreamSubscription stateSubscription;

  double progress = 0.0;
  PlayerState state = PlayerState.STOPPED;

  late final Future initFuture;

  @override
  void initState() {
    initFuture = player.init().then((_) {
      progressSubscription =
          player.progressStream.listen((p) => setState(() => progress = p));

      stateSubscription =
          player.stateStream.listen((s) => setState(() => state = s));
    });
    super.initState();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: FutureBuilder<void>(
              future: initFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState != ConnectionState.done) {
                  return Text('Loading');
                }
                return Card(
                  elevation: 3.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        player.filename,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildPlayButton(),
                          buildPauseButton(),
                          buildStopButton(),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(32.0),
                        child: LinearProgressIndicator(
                          value: progress,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  buildPlayButton() {
    if (state == PlayerState.PLAYING) {
      return IconButton(
        onPressed: null,
        icon: Icon(
          Icons.pause,
          color: Colors.blue,
          size: IconSize,
        ),
      );
    }
    return IconButton(
      onPressed: player.play,
      icon: Icon(Icons.play_arrow),
      color: Colors.blue,
      iconSize: IconSize,
    );
  }

  buildStopButton() {
    if (state == PlayerState.STOPPED) {
      return IconButton(
        onPressed: null,
        icon: Icon(
          Icons.stop,
          color: Colors.red,
          size: IconSize,
        ),
      );
    }
    return IconButton(
      onPressed: player.reset,
      icon: Icon(Icons.stop),
      color: Colors.red,
      iconSize: IconSize,
    );
  }

  buildPauseButton() {
    if (state == PlayerState.PLAYING) {
      return IconButton(
        onPressed: null,
        icon: Icon(
          Icons.pause,
          color: Colors.green,
          size: IconSize,
        ),
      );
    }
    return IconButton(
      onPressed: player.pause,
      icon: Icon(Icons.pause),
      color: Colors.green,
      iconSize: IconSize,
    );
  }
}
