import 'package:flutter/material.dart';

class Coin extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final Color CoinColor;

  const Coin({super.key, required this.CoinColor,  MaterialColor? coinColor});
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32), color:CoinColor),
    );
  }
}
