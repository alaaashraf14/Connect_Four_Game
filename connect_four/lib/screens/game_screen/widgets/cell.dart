import 'package:flutter/material.dart';

import 'coin.dart';

enum cellMode {
  EMPTY,
  YELLOW,
  RED,
}

class Cell extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final currentCellMode;

  const Cell({
    Key? key,
    @required this.currentCellMode,
  }) : super(key: key);

  Coin _buildCoin() {
    switch (this.currentCellMode) {
      case cellMode.YELLOW:
        return Coin(
          CoinColor: Colors.yellow, coinColor: Colors.yellow,
        );
        break;
      case cellMode.RED:
        return Coin(
          coinColor: Colors.red, CoinColor:Colors.red,
        );
      default:
        return Coin(
          CoinColor: Colors.white,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 50,
          width: 50,
          color: Colors.blue,
        ),
        Positioned.fill(
            child: Align(
          alignment: Alignment.center,
          child: _buildCoin(),
        ))
      ],
    );
  }
}