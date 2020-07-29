import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(SongPage());


class SongPage extends StatefulWidget {
  @override
  _SongPageState createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {

  var cache= AudioCache();
  Icon icon= Icon(Icons.pause);
  int flag= 0;
  var player= AudioPlayer();

  Expanded getPanel(String songname) {
    return Expanded(
      child: FlatButton(
        child: Text(songname.toUpperCase(),
          style: TextStyle(
              fontSize: 15.0,
              letterSpacing: 1.5,
              color: Colors.white
          ),
        ),
        color: Colors.teal,
        highlightColor: Colors.teal.shade100,
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
              leading: FlatButton(
                color: Colors.teal,
                onPressed: (){
                  if(player!= null){
                    if(flag== 0){
                      flag= 1;
                      player.pause();
                      setState(() {
                        icon= Icon(Icons.play_arrow);
                      });
                    }else{
                      flag= 0;
                      player.resume();
                      setState(() {
                        icon= Icon(Icons.pause);
                      });
                    }
                  }
                },
                child: icon
              ),
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
                color: Colors.teal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
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
                    Expanded(
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          getPanel('get back up'),
                          getPanel('fire on fire'),
                          getPanel('just like this'),
                          getPanel('tightrope'),
                          getPanel('someone u loved'),
                          getPanel('two of us'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
        ));
  }
}



//class XylophoneApp extends StatelessWidget {
//
//  var cache= AudioCache();
//  int flag= 0;
//  var player= AudioPlayer();
//
//  Expanded getPanel(String songname) {
//    return Expanded(
//      child: FlatButton(
//        child: Text(songname.toUpperCase(),
//          style: TextStyle(
//            fontSize: 15.0,
//            letterSpacing: 1.5,
//            color: Colors.white
//          ),
//        ),
//        color: Colors.teal,
//        onPressed: () async{
//          player?.stop();
//          player= await cache.play(songname + '.mp3');
//        },
//      ),
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(
//          backgroundColor: Colors.teal,
//          leading: FlatButton(
//            color: Colors.teal,
//            onPressed: (){
//              if(player!= null){
//                if(flag== 0){
//                  flag= 1;
//                  player.pause();
//                }else{
//                  flag= 0;
//                  player.resume();
//                }
//              }
//            },
//            child: Icon(
//              Icons.pause,
//              color: Colors.teal.shade100,
//            ),
//          ),
//          title: Center(
//            child: Text(
//              "Play Music",
//              style: TextStyle(
//                fontSize: 30.0,
//                fontWeight: FontWeight.bold,
//                fontFamily: "Pacifico",
//                color: Colors.teal.shade100
//              ),
//            ),
//          ),
//        ),
//        body: SafeArea(
//          child: Container(
//            color: Colors.teal,
//            child: Row(
//              crossAxisAlignment: CrossAxisAlignment.stretch,
//              children: <Widget>[
//                Expanded(
//                  child: Column(
//                    crossAxisAlignment: CrossAxisAlignment.stretch,
//                    children: <Widget>[
//                      getPanel('numb'),
//                      getPanel('passenger'),
//                      getPanel('put it all on me'),
//                      getPanel('sunflower'),
//                      getPanel('attention'),
//                      getPanel('circles'),
//                      getPanel('memories'),
//                      getPanel('closer'),
//                      getPanel('without you'),
//                      getPanel('titanium'),
//                      getPanel('back to life'),
//                    ],
//                  ),
//                ),
//                Expanded(
//                  child: Column(
//
//                    crossAxisAlignment: CrossAxisAlignment.stretch,
//                    children: <Widget>[
//                      getPanel('get back up'),
//                      getPanel('fire on fire'),
//                      getPanel('just like this'),
//                      getPanel('tightrope'),
//                      getPanel('someone u loved'),
//                      getPanel('two of us'),
//                    ],
//                  ),
//                ),
//              ],
//            ),
//        ),
//      )
//    ));
//  }
//}
