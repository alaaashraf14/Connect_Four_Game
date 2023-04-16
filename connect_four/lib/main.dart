import 'package:connect_four/core/bindings/main_bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/game_screen/game_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: MainBindings(),
      title: 'Connect_Four',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const GameScreen(),
        )
      ],
    );
  }
}
