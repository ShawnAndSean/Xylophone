import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatefulWidget {
  const Xylophone({Key? key}) : super(key: key);
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  static AudioCache player = AudioCache();

  void play(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  String name = '';
  Expanded build_function(int, name, Color) => Expanded(
        child: TextButton(
          onPressed: () {
            play(int);
          },
          child: Text(
            '$name',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          style: TextButton.styleFrom(backgroundColor: Color),
        ),
      );

  @override
  Widget build(BuildContext context) => MaterialApp(
          home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              build_function(1, 'Do', Colors.teal),
              build_function(2, 'Re', Colors.red),
              build_function(3, 'Mi', Colors.yellow),
              build_function(4, 'Fa', Colors.pink),
              build_function(5, 'So', Colors.green),
              build_function(6, 'La', Colors.purple),
              build_function(7, 'Ti', Colors.orange),
            ],
          ),
        ),
      ));
}
