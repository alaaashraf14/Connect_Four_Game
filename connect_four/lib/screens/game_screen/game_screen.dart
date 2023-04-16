import 'package:flutter/material.dart';

import 'widgets/game_body.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Connect Four")),
        ),
        body: const GameBody(),
      ),
    );
  }
}
