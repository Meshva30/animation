
import 'package:animation/task1/screen/homescreen.dart';
import 'package:animation/task1/screen/provider/game_provider.dart';
import 'package:animation/task2/hero/detilsscreen.dart';
import 'package:animation/task2/hero/homescreen.dart';
import 'package:animation/task3/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => GameProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
