import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(child: Text('kamu nanya')),
          backgroundColor: Colors.blue.shade900,
        ),
        body: MyApp(),
      ),
      debugShowCheckedModeBanner: false,
    )
  );
}

class MyApp extends StatelessWidget {
  void playsound() {
    final player = AudioCache();
    player.play('kamunanya.mp3');
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextButton(
                onPressed: () {
                  playsound();
                },
                child: Image.asset('images/dilan.jpeg'),
              ),
            ),
        ),
      ],
    );
  }
}
