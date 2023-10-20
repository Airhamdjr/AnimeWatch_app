// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mental_app/pages/action_page.dart';
import 'package:mental_app/pages/fantasy_page.dart';
import 'package:mental_app/pages/game_page.dart';
import 'package:mental_app/pages/home_page.dart';
import 'package:mental_app/pages/isekai_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/action': (context) => ActionPage(),
        '/isekai': (context) => IsekaiPage(),
        '/fantasy': (context) => FantasyPage(),
        '/game': (context) => GamePage(),
        '/home': (context) => HomePage(),
      },
      // other configurations...
    );
  }
}
