import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  var cache= AudioCache();
  var player= AudioPlayer();

  Expanded getPanel(String songname) {
    return Expanded(
      child: FlatButton(
        child: Text(songname.toUpperCase(),
          style: TextStyle(
            fontSize: 20.0,
            letterSpacing: 1.5,
            color: Colors.white
          ),
        ),
        color: Colors.teal,
        onPressed: () async{
          player?.stop();
          player= await cache.play(songname + '.mp3');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
            child: Text(
              "Play Music",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Pacifico",
                color: Colors.teal.shade100
              ),
            ),
          ),

        ),
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                getPanel('numb'),
                getPanel('passenger'),
                getPanel('put it all on me'),
                getPanel('sunflower'),
                getPanel('attention'),
                getPanel('circles'),
                getPanel('memories'),
                getPanel('closer'),
                getPanel('without you'),
                getPanel('titanium'),
                getPanel('back to life'),
            ],
          ),
        ),
      )
    ));
  }
}
