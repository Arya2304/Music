import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Audio Player',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ariana(),
    );
  }
}

class ariana extends StatefulWidget {
  @override
  _arianaState createState() => _arianaState();
}

class _arianaState extends State<ariana> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isBuffering = false; // Track buffering state

  @override
  void initState() {
    super.initState();

    // Listen to the player's state
    _audioPlayer.playerStateStream.listen((state) {
      setState(() {
        _isBuffering =
            state.playing && state.processingState == ProcessingState.buffering;
      });
    });
  }

  @override
  void dispose() {
    _audioPlayer.dispose(); // Dispose the audio player when done
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: const Text(
          "Music Artist",
          style: TextStyle(color: Colors.white),
        ),
        shadowColor: Colors.blueAccent,
        iconTheme: IconThemeData(color: Colors.white),
        //profile
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.black12,
              backgroundImage: AssetImage("assets/images/luffy.jpg"),
            ),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 150,
              backgroundColor: Colors.black,
              backgroundImage: AssetImage("assets/images/ag.jpg"),
              child: GestureDetector(
                onTap: () async {
                  try {
                    // Load the audio asset
                    await _audioPlayer.setAsset('assets/audio/ariana.mp3');
                    // Play the audio
                    _audioPlayer.play();
                  } catch (e) {
                    print("Error playing audio: $e");
                  }
                },
              ),
            ),
            ListTile(
              title: Text(
                "This is Ariana Grande ,click the image to play music!",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            if (_isBuffering) // Show loading indicator if buffering
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CircularProgressIndicator(),
              ),
          ],
        ),
      ),
    );
  }
}
