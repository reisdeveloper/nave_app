import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const BallPage());
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[700],
          title: const Text(
            'Ask Me Anything',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: InkWell(
            onTap: () => setState(() {
              ballNumber++;
              if (ballNumber > 5) {
                ballNumber = 1;
              }
            }),
            child:
                Image(image: AssetImage('assets/images/ball$ballNumber.png')),
          ),
        ),
      ),
    );
  }
}
